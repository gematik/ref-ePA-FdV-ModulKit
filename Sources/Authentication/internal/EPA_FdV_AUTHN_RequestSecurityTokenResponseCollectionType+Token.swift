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

extension EPA_FdV_AUTHN_RequestSecurityTokenResponseCollectionType {
    func parseToken() -> Authn.Token? {
        let tokenResponse: DDXMLNode? = self[0]?.getOriginalXmlSource()
        guard let assertions = try? tokenResponse?.nodes(forXPath: "/*/soap:Body[1]/*[1]/*[1]/*[1]/*[1]"),
              !assertions.isEmpty else {
            return nil
        }
        return Authn.Token(xml: assertions[0])
    }
}

extension Authn.Token {
    init(xml: DDXMLNode) {
        self.token = xml.xmlString
    }
}
