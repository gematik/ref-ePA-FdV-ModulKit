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

extension EPA_FdV_AUTHN_RequestSecurityTokenResponseType {
    /// This function maps a received `RequestSecurityTokenResponse` to a `RequestSecurityTokenResponse`
    ///     by transforming the `SignChallenge` to a `SignChallengeResponse` element
    ///     and returning a new instance of `RequestSecurityTokenResponse`.
    ///
    /// - Returns: A `EPA_FdV_AUTHN_RequestSecurityTokenResponseType` holding a <SignChallengeResponse> element
    ///     instead of a <SignChallenge> element
    ///
    /// - Throws: `Authn.SOAPError.unexpectedlyMalformedSoapBody` when received response was allegedly malformed.
    func deriveSignChallengeResponse() throws -> EPA_FdV_AUTHN_RequestSecurityTokenResponseType {
        let result = EPA_FdV_AUTHN_RequestSecurityTokenResponseType()
        guard let originalSecurityTokenResponse = self.getOriginalXmlSource() as? DDXMLElement,
              let originalSecurityTokenResponseName = originalSecurityTokenResponse.localName,
              let originalSecurityTokenResponseUri = originalSecurityTokenResponse.uri,
              let originalSignChallenge = originalSecurityTokenResponse.child(at: 0),
              let originalChallenge = originalSignChallenge.child(at: 0),
              let challengeStringValue = originalChallenge.stringValue,
              let resultSecurityTokenResponse = DDXMLNode.element(withName: originalSecurityTokenResponseName,
                                                                  uri: originalSecurityTokenResponseUri )
                      as? DDXMLElement,
              let resultSignChallengeResponse = DDXMLNode.element(withName: "SignChallengeResponse",
                                                                  uri: originalSecurityTokenResponseUri)
                      as? DDXMLElement,
              let resultChallenge = DDXMLNode.element(withName: "Challenge",
                                                      uri: originalSecurityTokenResponseUri)
                      as? DDXMLElement
                else {
            throw Authn.SOAPError.malformedSoapBody
        }
        resultSecurityTokenResponse.addChild(resultSignChallengeResponse)
        resultSignChallengeResponse.addChild(resultChallenge)
        resultChallenge.stringValue = challengeStringValue
        let requestHandler = EPA_FdV_AUTHN_RequestResultHandler(
                version: EPA_FdV_AUTHN_RequestResultHandler.SOAPVERSION_12)
        result.loadWithXml(__node: resultSecurityTokenResponse, __request: requestHandler)
        return result
    }
}
