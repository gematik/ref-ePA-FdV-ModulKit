// swiftlint:disable:this file_name
//
//  Copyright (c) 2020 gematik GmbH
//  
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//  
//     http://www.apache.org/licenses/LICENSE-2.0
//  
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import CommonCrypto
import HealthCardAccess
import KissXML

/// Proxy class for EPA_FdV_AUTHN_I_Authentication_Insurant_Binding_Soap12 LoginCreateTokenRequests
/// Usage: before you call an authenticated method: RenewToken, LoginCreateToken make sure to set the
/// authenticator to a non-nil value
class AuthenticationProxyBinding: EPA_FdV_AUTHN_I_Authentication_Insurant_Binding_Soap12, Randomizer {
    var authenticator: Authenticator?
    private let randomFunc: () -> String

    init<R: Randomizer>(service url: String, random: R) where R.Random == String {
        self.randomFunc = random.random
        super.init(url: url)
    }

    //swiftlint:disable line_length
    //swiftlint:disable:next identifier_name
    override func createLoginCreateTokenRequest(RequestSecurityTokenResponse: EPA_FdV_AUTHN_RequestSecurityTokenResponseType?, __request: EPA_FdV_AUTHN_RequestResultHandler) throws -> URLRequest {
        var requestObj = try super.createLoginCreateTokenRequest(RequestSecurityTokenResponse: RequestSecurityTokenResponse, __request: __request)
        //swiftlint:enable line_length
        guard let authenticator = authenticator else {
            throw Authn.Error.missingAuthenticator
        }
        guard let requestBody = requestObj.httpBody,
              let xmlBody = try? DDXMLDocument(data: requestBody, options: 0),
              let bodyElement = try? xmlBody.nodes(forXPath: "//soap:Body[1]").first as? DDXMLElement else {
            throw Authn.SOAPError.missingSoapBody
        }
        // Here we authenticate/sign the request
        try xmlBody.addSecurityHeader(elements: [(element: bodyElement, ns: ["soap"])],
                                      authenticator: authenticator,
                                      randomizer: self)

        let xmlData = xmlBody.xmlData
        requestObj.httpBody = xmlData
        requestObj.setValue(String(xmlData.count), forHTTPHeaderField: "Content-Length")
        return requestObj
    }

    func random() -> String {
        return randomFunc()
    }
}

// Digest a Data blob
protocol Digester {
    var w3orgAlgorithmId: String { get }
    func digest(data: Data) -> Digest
}

typealias ElementWithInclusiveNamespaces = (element: DDXMLElement, ns: [String])

extension DDXMLDocument {
    @discardableResult
    func addSecurityHeader<R: Randomizer>(
            elements: [ElementWithInclusiveNamespaces],
            authenticator: Authenticator,
            randomizer: R,
            digester: Digester = SHA256Digester()
    ) throws -> DDXMLDocument where R.Random == String {
        Executable<DDXMLDocument>
                .evaluate {
                    // Build xmlString representing the <wsse:security> element
                    try elements.forEach { elem in
                        let referenceWsuIdValue = "id-" + randomizer.random()
                        try elem.element.addWsuIdAttribute(value: referenceWsuIdValue)
                    }
                }
                .flatMap { _ in
                    return self.wsseSecurityXmlString(
                                    nodes: elements,
                                    authenticator: authenticator,
                                    randomizer: randomizer,
                                    digester: digester)
                            .map { (wsseSecurityXmlString: String) -> DDXMLDocument in

                                // Create the DDXMLElement <wsse:security> itself
                                guard let wsseSecElem = try? DDXMLElement(xmlString: wsseSecurityXmlString) else {
                                    throw Authn.SOAPError.xmlHandlingError
                                }

                                // Add the <wsse:security> element to <soap:Header>
                                guard let headerElem =
                                try? self.nodes(forXPath: "//soap:Header[1]").first as? DDXMLElement else {
                                    throw Authn.SOAPError.missingSoapHeader
                                }
                                headerElem.insertChild(wsseSecElem, at: 0)
                                return self
                            }
                }
                .run(on: Executor.trampoline)
                .on { event in
                    _ = event.value
                }
        return self
    }

    /// This function creates the xmlString representing the <wsse:Security> element
    ///     we want to add to the <soap:Header> element.
    func wsseSecurityXmlString<R: Randomizer>( // swiftlint:disable:this function_body_length
                                               nodes: [ElementWithInclusiveNamespaces],
                                               authenticator: Authenticator,
                                               randomizer: R,
                                               digester: Digester
    ) -> Executable<String> where R.Random == String {

        let tokenEncodingType = SoapTypes.base64Encoding.rawValue
        let x509TokenValueType = SoapTypes.x509TokenProfile.rawValue
        let tokenWsuId = "x509-"+randomizer.random()
        let mode = CanonicalizationMode.exc_c14n

        return authenticator.certificateInfo()
                .map { certificateInfo in
                    // <wsse:Security>
                    // <wsse:BinarySecurityToken>
                    let wsseToken = try XMLTemplateEngine.createWsseBinarySecurityTokenXmlString(
                            encodingType: tokenEncodingType,
                            valueType: x509TokenValueType,
                            tokenWsuId: tokenWsuId,
                            certificate: certificateInfo.certificate)
                    // </wsse:BinarySecurityToken>
                    // <ds:Signature>
                    // <ds:SignedInfo>
                    let dsReferences: [String] = try nodes.map { elem in
                        guard let referenceWsuIdAttr = elem.element.attribute(forName: "wsu:Id"),
                              let wsuIdAttrValue = referenceWsuIdAttr.stringValue else {
                            throw Authn.SOAPError.xmlHandlingError
                        }
                        let digest = try self.canonicalizedDigest(
                                mode: mode, nodes: [elem.element], digester: digester, inclusive: elem.ns + ["wsu"]
                        )
                        return try XMLTemplateEngine.createDsReferenceXmlString(
                                referenceUri: "#" + wsuIdAttrValue,
                                transforms: [mode.w3orgAlgorithmId],
                                digester: digester,
                                digest: digest)
                    }
                    let dsSignedInfo = try XMLTemplateEngine.createDsSignedInfoXmlString(
                            mode: mode,
                            signatureAlgorithm: certificateInfo.signatureAlgorithm,
                            references: dsReferences)
                    // </ds:SignedInfo>
                    return (certificateInfo, wsseToken, dsSignedInfo)
                }
                .flatMap { (certificateInfo: Authn.CertificateInfo, wsseToken: String, dsSignedInfo: String) in
                    // <ds:SignatureValue>
                    let signedInfoDoc = try DDXMLDocument(xmlString: dsSignedInfo, options: 0)
                    guard let signedInfoDocRootElem = signedInfoDoc.rootElement() else {
                        throw Authn.SOAPError.xmlHandlingError
                    }
                    let digester = certificateInfo.signatureAlgorithm.digester
                    let signedInfoDigest = try signedInfoDoc.canonicalizedDigest(mode: mode,
                                                                                 nodes: [signedInfoDocRootElem],
                                                                                 digester: digester,
                                                                                 inclusive: ["soap"])
                    return authenticator.authenticate(challenge: signedInfoDigest)
                            .map { signedValue in
                                // </ds:SignatureValue>
                                // <KeyInfo>
                                let keyInfoId = randomizer.random()

                                let dsKeyInfo = try XMLTemplateEngine.createDsKeyInfoXmlString(
                                        keyInfoId: keyInfoId,
                                        referenceUri: "#"+tokenWsuId,
                                        referenceValueType: x509TokenValueType)
                                // </ds:KeyInfo>
                                let signatureId = "SIG-"+randomizer.random()
                                let dsSignature = try XMLTemplateEngine.createDsSignatureXmlString(
                                        signatureId: signatureId,
                                        signedInfo: dsSignedInfo,
                                        signatureValue: signedValue,
                                        keyInfo: dsKeyInfo)
                                // </ds:Signature>
                                let wsseSecurity = try XMLTemplateEngine.createWsseSecurityXmlString(
                                        binaryToken: wsseToken,
                                        signature: dsSignature)
                                // </wsse:Security>
                                return wsseSecurity
                            }
                }
    }

    /// Canonicalize gives nodes and let a given digester calculate a digest value
    /// Returns: the digested value for the given nodes is self document
    func canonicalizedDigest(mode: DDXMLDocument.CanonicalizationMode,
                             nodes: [DDXMLNode],
                             digester: Digester,
                             inclusive namespaces: [String] = []
    ) throws -> Data {
        guard let canonicalizedString = self.canonicalize(nodes: nodes, mode: mode, inclusive: namespaces) else {
            throw Authn.SOAPError.xmlHandlingError
        }
        return digester.digest(data: Data(canonicalizedString.utf8))
    }
}

extension DDXMLElement {
    /// Adds a wsu:Id attribute to this element. Also adds the necessary namespace declaration to this element.
    /// This is done so the <ds:Reference> element to by signed can identify this element by id.
    ///
    /// - Parameter value: value of the wsu:Id attribute, e.g. wsu:Id="id-378b4cc6-7ceb-405f-bae2-4b017cdd1fbb"
    /// - Throws: `Authn.SOAPError`
    func addWsuIdAttribute(value: String) throws {
        try self.addNamespace(name: "wsu", value: Namespaces.wsu.rawValue)
        try self.addAttribute(nameWithPrefix: "wsu:Id", value: value)
    }

    private func addNamespace(name: String, value: String) throws {
        guard let namespace = DDXMLNode.namespace(withName: name, stringValue: value) as? DDXMLNode else {
            throw Authn.SOAPError.xmlHandlingError
        }
        self.addNamespace(namespace)
    }

    private func addAttribute(nameWithPrefix: String, value: String) throws {
        guard let attribute = DDXMLNode.attribute(withName: nameWithPrefix, stringValue: value) as? DDXMLNode else {
            throw Authn.SOAPError.xmlHandlingError
        }
        self.addAttribute(attribute)
    }
}

typealias Digest = Data

class SHA256Digester: Digester {
    /// Identifier to use for the *Algorithm* attribute in the <ds:DigestMethod> element in <ds:Reference>
    private(set) var w3orgAlgorithmId: String = "http://www.w3.org/2001/04/xmlenc#sha256"

    func digest(data: Data) -> Digest {
        return data.sha256()
    }
}

extension Data {
    func sha256() -> Digest {
        var digest = [UInt8](repeating: 0x0, count: Int(CC_SHA256_DIGEST_LENGTH))
        self.withUnsafeBytes {
            _ = CC_SHA256($0.baseAddress!, CC_LONG(self.count), &digest) // swiftlint:disable:this force_unwrapping
        }
        return Data(digest)
    }
}

extension DDXMLDocument.CanonicalizationMode {
    /// Identifier to use for the *Algorithm* attribute in a <ds:Transform> element in <ds:Reference>
    var w3orgAlgorithmId: String {
        switch self {
        case .c14n: return "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"
        case .exc_c14n: return "http://www.w3.org/2001/10/xml-exc-c14n#"
        case .c14n11: return "http://www.w3.org/2006/12/xml-c14n11"
        case .c14n2: return "http://www.w3.org/2010/xml-c14n2"
        }
    }
}

extension Authn.SignatureAlgorithm {
    /// Identifier to use for the *Algorithm* attribute in the <ds:SignatureMethod> element in <ds:Signature>
    var w3orgAlgorithmId: String {
        switch self {
        case .ecdsaSha256: return "http://www.w3.org/2001/04/xmldsig-more#ecdsa-sha256"
        case .sha256RsaMgf1: return "https://www.w3.org/2007/05/xmldsig-more#sha256-rsa-MGF1"
        }
    }

    var digester: Digester {
        return SHA256Digester()
    }
}
