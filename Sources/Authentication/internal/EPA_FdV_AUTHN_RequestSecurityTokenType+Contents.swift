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

extension EPA_FdV_AUTHN_RequestSecurityTokenType {
    static func contentsForRenew(token: Authn.Token) -> [DDXMLElement] {
        // <trust:RequestType>
        guard let tokenType = EPA_FdV_AUTHN_RequestSecurityTokenType.trustTypeElement(
                trustTypeLocalName: "TokenType",
                stringValue: Namespaces.saml2TokenProfile.rawValue
        ),
              let requestType = EPA_FdV_AUTHN_RequestSecurityTokenType.trustTypeElement(
                      trustTypeLocalName: "RequestType",
                      stringValue: Namespaces.renewToken.rawValue
              ),
              let renewTarget = EPA_FdV_AUTHN_RequestSecurityTokenType.trustTargetElement(
                      targetLocalName: "RenewTarget",
                      token: token
              ) else {
            return []
        }
        return [tokenType, requestType, renewTarget]
    }

    static func contentsForLogout(token: Authn.Token) -> [DDXMLElement] {
        // <trust:RequestType>
        guard let requestType = EPA_FdV_AUTHN_RequestSecurityTokenType.trustTypeElement(
                trustTypeLocalName: "RequestType",
                stringValue: Namespaces.cancelToken.rawValue
        ),
              let cancelTarget = EPA_FdV_AUTHN_RequestSecurityTokenType.trustTargetElement(
                      targetLocalName: "CancelTarget",
                      token: token
              ) else {
            return []
        }
        return [requestType, cancelTarget]
    }

    /// Create a `DDXMLElement` with e.g. <trust:RequestType ...> ... </trust:RequestType>
    ///     This will be inserted later into the soap body of a request regarding renewing/canceling `Authn.Token`s.
    ///
    /// - Parameters:
    ///   - trustTypeName: can be "TokenType" or "RequestType", ... (will become trust:TokenType...)
    ///   - stringValue: stringValue of this `DDXMLElement`
    /// - Returns: Created `DDXMLElement` if successful else nil
    private static func trustTypeElement(trustTypeLocalName: String, stringValue: String) -> DDXMLElement? {
        guard let trustNamespace = DDXMLNode.namespace(withName: "trust",
                                                       stringValue: Namespaces.trust.rawValue) as? DDXMLNode,
              let xsiNamespace = DDXMLNode.namespace(withName: "xsi",
                                                     stringValue: Namespaces.xsi.rawValue) as? DDXMLNode,
              let trustType = DDXMLElement.element(withName: "trust:"+trustTypeLocalName,
                                                   stringValue: stringValue) as? DDXMLElement,
              let xsiTypeAttribute = DDXMLNode.attribute(withName: "xsi:type",
                                                         stringValue: "trust:String") as? DDXMLNode

                else {
            return nil
        }
        trustType.addNamespace(trustNamespace)
        trustType.addNamespace(xsiNamespace)
        trustType.addAttribute(xsiTypeAttribute)

        return trustType
    }

    /// See func `trustTypeElement()` above.
    private static func trustTargetElement(targetLocalName: String, token: Authn.Token) -> DDXMLElement? {
        guard let trustNamespace = DDXMLNode.namespace(withName: "trust",
                                                       stringValue: Namespaces.trust.rawValue) as? DDXMLNode,
              let xsiNamespace = DDXMLNode.namespace(withName: "xsi",
                                                     stringValue: Namespaces.xsi.rawValue) as? DDXMLNode,
              let trustTarget = DDXMLElement.element(withName: "trust:"+targetLocalName) as? DDXMLElement,
              let xsiTypeAttribute = DDXMLNode.attribute(withName: "xsi:type",
                                                         stringValue: "trust:PreMarshalledPrimitive") as? DDXMLNode,
              let saml2Doc = try? DDXMLDocument(xmlString: token.token, options: 0),
              let saml2DocRootElem = saml2Doc.rootElement() else {
            return nil
        }
        trustTarget.addNamespace(trustNamespace)
        trustTarget.addNamespace(xsiNamespace)
        trustTarget.addAttribute(xsiTypeAttribute)
        saml2DocRootElem.detach()
        trustTarget.addChild(saml2DocRootElem)

        return trustTarget
    }
}
