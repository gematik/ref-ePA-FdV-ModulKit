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
import XCTest

final class XMLTemplateEngineTest: XCTestCase {
    func testCreateDsReferenceElement() {
        let uri = "id-123"
        let transforms = [DDXMLDocument.CanonicalizationMode.exc_c14n.w3orgAlgorithmId]
        let digester = SHA256Digester()
        let digestBase64 = "7/kQQKkLdZ++zDXMHP94hSd8MLHV8C9uC6kT3zGQlV8="
        // swiftlint:disable:next force_unwrapping
        let digest = Data(base64Encoded: digestBase64, options: Data.Base64DecodingOptions(rawValue: 0))!

        guard let dsReferenceElement = try? XMLTemplateEngine.createDsReferenceXmlString(
                referenceUri: "#"+uri,
                transforms: transforms,
                digester: digester,
                digest: digest
        ) else {
            XCTFail("Could not create <ds:Reference> element.")
            return
        }
        XCTAssert(dsReferenceElement.contains("URI=\"#"+uri+"\""))
    }
}
