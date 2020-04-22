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

import Foundation

public enum Namespaces: String {
    case wsu = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"
    case wsse = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"
    case ds = "http://www.w3.org/2000/09/xmldsig#" // swiftlint:disable:this identifier_name
    case trust = "http://docs.oasis-open.org/ws-sx/ws-trust/200512"
    case saml2 = "urn:oasis:names:tc:SAML:2.0:assertion"
    case xml = "http://www.w3.org/XML/1998/namespace"
    case xsi = "http://www.w3.org/2001/XMLSchema-instance"
    case xsd = "http://www.w3.org/2001/XMLSchema"
    case enc = "http://schemas.xmlsoap.org/soap/encoding/"
    case saml2TokenProfile = "http://docs.oasis-open.org/wss/oasis-wss-saml-token-profile-1.1#SAMLV2.0"
    case createToken = "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue"
    case renewToken = "http://docs.oasis-open.org/ws-sx/ws-trust/200512/Renew"
    case cancelToken = "http://docs.oasis-open.org/ws-sx/ws-trust/200512/Cancel"
}

public enum SoapTypes: String {
    case base64Encoding =
            "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary"
    case x509TokenProfile = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-x509-token-profile-1.0#X509v3"
    case binarySecurityTokenProfile =
            "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"
}
