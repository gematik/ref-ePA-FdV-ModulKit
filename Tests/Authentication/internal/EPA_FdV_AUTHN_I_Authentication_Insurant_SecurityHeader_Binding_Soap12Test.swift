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

@testable import ePA_FdV_Authn
import KissXML
import XCTest

class TestRandomizer: Randomizer {
    func random() -> String {
    return UUID().uuidString
    }
}

// swiftlint:disable:next type_name
final class EPA_FdV_AUTHN_I_Authentication_Insurant_SecurityHeader_Binding_Soap12Test: XCTestCase {

    let resourceBundleURL = URL(fileURLWithPath: #file)
            .deletingLastPathComponent()
            .deletingLastPathComponent()
            .appendingPathComponent("Resources.bundle")

    let xmlSource1 = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><a>test</a>"
    // swiftlint:disable:next line_length
    let createTokenRequestSkeleton = "<soap:Envelope xmlns:c=\"http://www.w3.org/2003/05/soap-encoding\" xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\" xmlns:n=\"http://docs.oasis-open.org/ws-sx/ws-trust/200512\"><soap:Header><n1:Action n2:mustUnderstand=\"1\">http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue</n1:Action><n3:MessageID>urn:uuid:61AEC022-C5FB-48C2-ABE0-AC73862BEF0D</n3:MessageID><n4:ReplyTo><n5:Address>http://www.w3.org/2005/08/addressing/anonymous</n5:Address></n4:ReplyTo><n6:To n7:mustUnderstand=\"1\">http://localhost:8765/Authentication/I_Authentication_Insurant</n6:To></soap:Header><soap:Body id=\"o0\" c:root=\"1\"><n8:RequestSecurityToken></n8:RequestSecurityToken></soap:Body></soap:Envelope>"

    func testAddSecurityHeader() {
        // swiftlint:disable force_try line_length
        let certificate = try! Data(contentsOf: resourceBundleURL.appendingPathComponent("AUT_E256.der"))
        let signature = try! Data(hex: "51E9C005E1AE74FCC1B497672C3EEE78874AE633CC14691AD409ABC53B12EA5F9C4AC7E923D562E20CA5F466CCD7E12FE2D07A1FABC0C696EFDE027D0E21E3E8")
        let digestData = try! Data(hex: "25C8A5D981C65FDF34681438BA702A8DB9333027DB2070781BCBA54D45D71339")
        let certificateInfo = Authn.CertificateInfo(certificate: certificate, signatureAlgorithm: .ecdsaSha256)
        let signedChallengeInfo = AuthnTest.SignedChallengeInfo(certificateInfo: certificateInfo,
                                                                challenge: digestData,
                                                                signature: signature)

        let document: DDXMLDocument = try! DDXMLDocument(xmlString: createTokenRequestSkeleton, options: 0)
        // swiftlint:enable force_try line_length
        guard let rootElem = document.rootElement() as? DDXMLElement,
              let bodyElem = try? document.nodes(forXPath: "//soap:Body[1]").first as? DDXMLElement else {
            XCTFail("Requested element //soap:Body[1] not found")
            return
        }
        let authenticator = AuthnTest.TestAuthenticator(info: signedChallengeInfo )
        let randomizer = TestRandomizer()
        let digester = SHA256Digester()

        // swiftlint:disable:next unused_optional_binding
        guard let _ = try? document.addSecurityHeader(elements: [(element: bodyElem, ns: [])],
                                                      authenticator: authenticator,
                                                      randomizer: randomizer,
                                                      digester: digester) else {
            XCTFail("Could not add the <wsse:security> element to <soap:Header>")
            return
        }
        guard let headerElem = rootElem.elements(forLocalName: "Header", uri: nil).first as? DDXMLElement,
              let securityElem = headerElem.elements(forLocalName: "Security", uri: nil).first as? DDXMLElement,
              let signatureElem = securityElem.elements(forLocalName: "Signature", uri: nil).first as? DDXMLElement,
              let signatureValElem = signatureElem.elements(forLocalName: "SignatureValue", uri: nil).first
                      as? DDXMLElement
                else {
            XCTFail("Could not retrieve expected elements from manupulated document")
            return
        }

         XCTAssertFalse(signatureValElem.stringValue?.isEmpty ?? true)
    }

    func testCanonicalizedDigest() {
        let fileUrl = resourceBundleURL.appendingPathComponent("soap_body.xml")
        guard let tokenRequest = try? String(contentsOf: fileUrl, encoding: .utf8),
              let document = try? DDXMLDocument(xmlString: tokenRequest, options: 0),
              let node = try? document.nodes(forXPath: "//soap:Body[1]").first else {
            XCTFail("Could not create DDXMLDocument from String")
            return
        }

        let expectedDigestBase64 = "7/kQQKkLdZ++zDXMHP94hSd8MLHV8C9uC6kT3zGQlV8="
        // swiftlint:disable:next force_unwrapping
        let expected = Data(base64Encoded: expectedDigestBase64, options: Data.Base64DecodingOptions(rawValue: 0))!

        guard let digest = try? document.canonicalizedDigest(mode: .exc_c14n,
                                                             nodes: [node],
                                                             digester: SHA256Digester()) else {
            XCTFail("Failed to digest document")
            return
        }
        XCTAssertEqual(expected, digest)
    }

    func testAddWsuIdAttributeToElement() {
        let value = "random-value"

        // swiftlint:disable:next force_try
        let skeleton: DDXMLDocument = try! DDXMLDocument(xmlString: createTokenRequestSkeleton, options: 0)
        guard let elem = try? skeleton.nodes(forXPath: "//soap:Body[1]").first as? DDXMLElement else {
            XCTFail("Requested element //soap:Body[1] not found")
            return
        }
        XCTAssertNil(elem.resolvePrefix(forNamespaceURI: Namespaces.wsu.rawValue))

        try? elem.addWsuIdAttribute(value: value)
        XCTAssertNotNil(elem.resolvePrefix(forNamespaceURI: Namespaces.wsu.rawValue))

        guard let attribute = elem.attribute(forName: "wsu:Id") as? DDXMLNode,
              let attributeUri = attribute.uri else {
            XCTFail("Expected attribute not found")
            return
        }
        XCTAssertEqual(attribute.stringValue, value)
        XCTAssertEqual(attributeUri, Namespaces.wsu.rawValue)
    }

    func testSha256Digester() {
        let sha256Digester = SHA256Digester()
        let data = "random value".data(using: .utf8)! //swiftlint:disable:this force_unwrapping

        //swiftlint:disable:next force_try
        let expectedHash = try! Data(hex: "d20ad08d0a9ed1cf3f14a0faca4f018830bad7c5907a32a1799b10e19e4bfe70")
        XCTAssertEqual(expectedHash, sha256Digester.digest(data: data))

        let different = "Different".data(using: .utf8)! //swiftlint:disable:this force_unwrapping
        XCTAssertNotEqual(expectedHash, different.sha256())
    }
}
