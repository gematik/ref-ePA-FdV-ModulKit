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

import KissXML

struct XMLTemplateEngine {
    private static let bundle = Bundle(for: AuthenticationProxyBinding.self)
    private static let pathWsseToken = bundle.resourceFilePath(in: "Resources", for: "template_wsseToken.xml")
    private static let pathDsTransform = bundle.resourceFilePath(in: "Resources", for: "template_dsTransform.xml")
    private static let pathDsReference = bundle.resourceFilePath(in: "Resources", for: "template_dsReference.xml")
    private static let pathSignedInfo = bundle.resourceFilePath(in: "Resources", for: "template_dsSignedInfo.xml")
    private static let pathKeyInfo = bundle.resourceFilePath(in: "Resources", for: "template_dsKeyInfo.xml")
    private static let pathSignature = bundle.resourceFilePath(in: "Resources", for: "template_dsSignature.xml")
    private static let pathSecurity = bundle.resourceFilePath(in: "Resources", for: "template_wsseSecurity.xml")

    static func createWsseBinarySecurityTokenXmlString(
            encodingType: String,
            valueType: String,
            tokenWsuId: String,
            certificate: x509Certificate
    ) throws -> String {
        let wsseTokenTemplate = try String(contentsOf: pathWsseToken.asURL)
        let certificateBase64 = certificate.base64EncodedString()
        return wsseTokenTemplate
        .replacingOccurrences(of: "${template_EncodingType}", with: encodingType)
        .replacingOccurrences(of: "${template_ValueType}", with: valueType)
        .replacingOccurrences(of: "${template_wsuId}", with: tokenWsuId)
        .replacingOccurrences(of: "${template_certificateBase64}", with: certificateBase64)
    }

    static func createDsReferenceXmlString(
            referenceUri: String,
            transforms: [String],
            digester: Digester,
            digest: Data
    ) throws -> String {
        let dsTransformTemplate = try String(contentsOf: pathDsTransform.asURL)
        let dsReferenceTemplate = try String(contentsOf: pathDsReference.asURL)

        // <ds:Transforms> can contain several <ds:Transform> elements -> list them one by one
        let dsTransformReplacement = transforms
                .map { transformString in
                    dsTransformTemplate.replacingOccurrences(of: "${template_transformMethodAlgorithm}",
                                                             with: transformString)
                }
                .joined(separator: "\n")

        return dsReferenceTemplate
                .replacingOccurrences(of: "${template_referenceURI}", with: referenceUri)
                .replacingOccurrences(of: "${template_dsTransform}", with: dsTransformReplacement)
                .replacingOccurrences(of: "${template_digestMethodAlgorithm}", with: digester.w3orgAlgorithmId)
                .replacingOccurrences(of: "${template_digestValue}", with: digest.base64EncodedString())
    }

    static func createDsSignedInfoXmlString(
            mode: DDXMLDocument.CanonicalizationMode,
            signatureAlgorithm: Authn.SignatureAlgorithm,
            references: [String]
    ) throws -> String {
        let dsSignedInfoTemplate = try String(contentsOf: pathSignedInfo.asURL)

        // <ds:SignedInfo> can contain several <ds:Reference> elements -> list them one by one
        let dsReferenceReplacement = references.joined(separator: "\n")

        return dsSignedInfoTemplate
                .replacingOccurrences(of: "${template_canonicalizationMethodAlgorithm}", with: mode.w3orgAlgorithmId)
                .replacingOccurrences(of: "${template_signatureMethodAlgorithm}",
                                      with: signatureAlgorithm.w3orgAlgorithmId)
                .replacingOccurrences(of: "${template_dsReference}", with: dsReferenceReplacement)
    }

    static func createDsKeyInfoXmlString(
            keyInfoId: String,
            referenceUri: String,
            referenceValueType: String
    ) throws -> String {
        let dsKeyInfoTemplate = try String(contentsOf: pathKeyInfo.asURL)
        return dsKeyInfoTemplate
                .replacingOccurrences(of: "${template_keyInfoId}", with: keyInfoId)
                .replacingOccurrences(of: "${template_referenceURI}", with: referenceUri)
                .replacingOccurrences(of: "${template_referenceValueType}", with: referenceValueType)
    }

    static func createDsSignatureXmlString(
            signatureId: String,
            signedInfo: String,
            signatureValue: Signature,
            keyInfo: String
    ) throws -> String {
        let dsSignatureTemplate = try String(contentsOf: pathSignature.asURL)
        return dsSignatureTemplate
                .replacingOccurrences(of: "${template_SignatureId}", with: signatureId)
                .replacingOccurrences(of: "${template_dsSignedInfo}", with: signedInfo)
                .replacingOccurrences(of: "${template_SignatureValue}", with: signatureValue.base64EncodedString())
                .replacingOccurrences(of: "${template_dsKeyInfo}", with: keyInfo)
    }

    static func createWsseSecurityXmlString(
            binaryToken: String,
            signature: String
    ) throws -> String {
        let wsseSecurityTemplate = try String(contentsOf: pathSecurity.asURL)
        return wsseSecurityTemplate
                .replacingOccurrences(of: "${template_wsseBinaryToken}", with: binaryToken)
                .replacingOccurrences(of: "${template_dsSignature}", with: signature)
    }
}
