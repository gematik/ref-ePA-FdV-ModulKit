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
import Foundation
import KissXML
import OHHTTPStubs
import XCTest

// swiftlint:disable:next type_name
final class EPA_I_Authentication_Insurant_Binding_Soap12Test: XCTestCase {
    override func tearDown() {
        OHHTTPStubs.removeAllStubs()
        super.tearDown()
    }

    let host = "localhost"
    let port = 8765
    let loginPath = "/Authentication/I_Authentication_Insurant"

    var service: EPA_FdV_AUTHN_I_Authentication_Insurant_Binding_Soap12!

    let resourceBundleURL = URL(fileURLWithPath: #file)
            .deletingLastPathComponent()
            .deletingLastPathComponent()
            .appendingPathComponent("Resources.bundle")

    override func setUp() {
        super.setUp()
        service = EPA_FdV_AUTHN_I_Authentication_Insurant_Binding_Soap12(url: "http://\(host):\(port)\(loginPath)")
    }

    func testCreateLoginRequest() {
        let responseURL = resourceBundleURL.appendingPathComponent("login_create_challenge_response.xml")

        // swiftlint:disable:next trailing_closure
        stub(condition: isHost(self.host) &&
                isPort(self.port) &&
                isPath(self.loginPath) &&
                isMethodPOST() &&
                // swiftlint:disable:next line_length
                hasHeaderNamed("Content-Type", value: "application/soap+xml; charset=utf-8; action=\"http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue\""),
                     response: { _ in
                    OHHTTPStubsResponse(
                            fileURL: responseURL,
                            statusCode: 200,
                            headers: ["Content-Type": "application/soap+xml;charset=UTF-8"]
                    )
                }
        )

        var err: Error?
        let response = try? service.LoginCreateChallenge(RequestSecurityToken: EPA_FdV_AUTHN_RequestSecurityTokenType(),
                __error: &err)

        // swiftlint:disable force_try
        let xmlData = try! Data(contentsOf: responseURL)
        let document = try! DDXMLDocument(data: xmlData, options: 0)
        let expectedChallenge = document.child(at: 0)?.child(at: 1)?.child(at: 0)
        XCTAssertEqual(response?.getOriginalXmlSource().debugDescription, expectedChallenge.debugDescription)
    }

    static let allTests = [
        ("testCreateLoginRequest", testCreateLoginRequest)
    ]
}
