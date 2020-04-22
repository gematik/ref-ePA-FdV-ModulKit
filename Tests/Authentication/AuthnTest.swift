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
import HealthCardAccess
import KissXML
import Nimble
import OHHTTPStubs
import XCTest

final class AuthnTest: XCTestCase {

    let host = "localhost"
    let port = 9094
    let loginPath = "/Authentication/I_Authentication_Insurant"

    let resourceBundleURL = URL(fileURLWithPath: #file)
            .deletingLastPathComponent()
            .appendingPathComponent("Resources.bundle")

    override func setUp() { // swiftlint:disable:this function_body_length
        super.setUp()
        let challengeResponseURL = resourceBundleURL.appendingPathComponent("login_create_challenge_response.xml")
        let createTokenRequestURL = resourceBundleURL.appendingPathComponent("login_create_token_request.xml")
        let createTokenResponseURL = resourceBundleURL.appendingPathComponent("login_create_token_response.xml")
        let renewTokenResponseURL = resourceBundleURL.appendingPathComponent("renew_token_response.xml")
        let logoutResponseURL = resourceBundleURL.appendingPathComponent("logout_response.xml")

        /// Stub CreateChallenge request
        // swiftlint:disable:next trailing_closure
        stub(condition: isHost(self.host) &&
                isPort(self.port) &&
                isPath(self.loginPath) &&
                isMethodPOST() &&
                // swiftlint:disable:next line_length
                hasHeaderNamed("Content-Type", value: "application/soap+xml; charset=utf-8; action=\"http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue\"") &&
                hasHeaderNamed("SOAPAction", value: "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue"),
             response: { _ in
                 OHHTTPStubsResponse(
                         fileURL: challengeResponseURL,
                         statusCode: 200,
                         headers: ["Content-Type": "application/soap+xml;charset=UTF-8"]
                 )
             }
        )
        /// Stub CreateLoginToken request
        let signature = "UenABeGudPzBtJdnLD7ueIdK5jPMFGka1AmrxTsS6l+cSsfpI9Vi4gyl9GbM1+Ev4tB6H6vAxpbv3gJ9DiHj6A=="
        stub(condition: isHost(self.host) &&
                isPort(self.port) &&
                isPath(self.loginPath) &&
                isMethodPOST() &&
                // swiftlint:disable:next line_length
                hasHeaderNamed("Content-Type", value: "application/soap+xml; charset=utf-8; action=\"http://docs.oasis-open.org/ws-sx/ws-trust/200512/RSTR/ChallengeFinal\"") &&
                hasHeaderNamed("SOAPAction",
                               value: "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RSTR/ChallengeFinal") &&
                xmlBodyContains(string: signature) &&
                // swiftlint:disable:next line_length
                xmlBodyContains(string: "<ds:DigestValue>hRwV+krBTsLp9Qbm3BJfFR23l3fMiHGQjrQqd9oopEU=</ds:DigestValue>") &&
                xmlBodyContains(string: "SignChallengeResponse")) { _ in
            OHHTTPStubsResponse(
                    fileURL: createTokenResponseURL,
                    statusCode: 200,
                    headers: ["Content-Type": "application/soap+xml;charset=UTF-8"]
            )
        }

        /// Stub Renew login token request
        // swiftlint:disable:next trailing_closure
        stub(condition: isHost(self.host) &&
                isPort(self.port) &&
                isPath(self.loginPath) &&
                isMethodPOST() &&
                // swiftlint:disable:next line_length
                hasHeaderNamed("Content-Type", value: "application/soap+xml; charset=utf-8; action=\"http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Renew\"") &&
                hasHeaderNamed("SOAPAction", value: "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Renew"),
             response: { _ in
                 OHHTTPStubsResponse(
                         fileURL: renewTokenResponseURL,
                         statusCode: 200,
                         headers: ["Content-Type": "application/soap+xml;charset=UTF-8"]
                 )
             }
        )

        /// Stub Logout request
        // swiftlint:disable:next trailing_closure
        stub(condition: isHost(self.host) &&
                isPort(self.port) &&
                isPath(self.loginPath) &&
                isMethodPOST() &&
                // swiftlint:disable:next line_length
                hasHeaderNamed("Content-Type", value: "application/soap+xml; charset=utf-8; action=\"http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Cancel\"") &&
                hasHeaderNamed("SOAPAction", value: "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Cancel"),
             response: { _ in
                 OHHTTPStubsResponse(
                         fileURL: logoutResponseURL,
                         statusCode: 200,
                         headers: ["Content-Type": "application/soap+xml;charset=UTF-8"]
                 )
             }
        )
    }

    override func tearDown() {
        OHHTTPStubs.removeAllStubs()
        super.tearDown()
    }

    func testLogin() {
        //swiftlint:disable force_try line_length
        let signature = try! Data(hex: "51E9C005E1AE74FCC1B497672C3EEE78874AE633CC14691AD409ABC53B12EA5F9C4AC7E923D562E20CA5F466CCD7E12FE2D07A1FABC0C696EFDE027D0E21E3E8")
        let digestData = try! Data(hex: "EFF91040A90B759FBECC35CC1CFF7885277C30B1D5F02F6E0BA913DF3190955F")
        let certificate = try! Data(contentsOf: resourceBundleURL.appendingPathComponent("AUT_E256.der"))
        let expectedSaml2Token = try! String(contentsOf: resourceBundleURL.appendingPathComponent("saml2_token.txt"))
        //swiftlint:enable force_try line_length

        class TestRandomizer: Randomizer {
            func random() -> String {
                return "random"
            }
        }

        let certificateInfo = Authn.CertificateInfo(certificate: certificate, signatureAlgorithm: .ecdsaSha256)
        let signedChallengeInfo = SignedChallengeInfo(certificateInfo: certificateInfo,
                                                      challenge: digestData,
                                                      signature: signature)

        let url = URL(string: "http://\(host):\(port)\(loginPath)")! //swiftlint:disable:this force_unwrapping
        let authn = Authn(service: url, random: TestRandomizer())
        // swiftlint:disable:next force_try
        let saml2Node = try! DDXMLElement(xmlString: expectedSaml2Token) as DDXMLNode
        let token = Authn.Token(xml: saml2Node)
        let authenticator = TestAuthenticator(info: signedChallengeInfo)
        expect {
            authn.login(authenticator: authenticator).test()
        } == token

        // swiftlint:disable:next force_try
        let expectedChallenge = try! Data(hex: "F9411CC96631458EEACCC8D227896E7A13929B08556C4B305F6AF0DDA76328D6")
        expect(authenticator.receivedDigests[0]) == expectedChallenge
    }

    func testRenewToken() {
        guard let saml2 = try? String(contentsOf: resourceBundleURL.appendingPathComponent("saml2_token.txt")) else {
            XCTFail("Could not read saml2_token.txt test resource.")
            return
        }
        let url = URL(string: "http://\(host):\(port)\(loginPath)")! //swiftlint:disable:this force_unwrapping
        let authn = Authn(service: url, random: TestRandomizer())
        expect {
            authn.renew(token: Authn.Token(token: saml2)).test()?.token
        }.to(contain("urn:oasis:names:tc:SAML:2.0:assertion"))
    }

    func testLogout() {
        guard let saml2 = try? String(contentsOf: resourceBundleURL.appendingPathComponent("saml2_token.txt")) else {
            XCTFail("Could not read saml2_token.txt test resource.")
            return
        }
        let url = URL(string: "http://\(host):\(port)\(loginPath)")! //swiftlint:disable:this force_unwrapping
        let authn = Authn(service: url, random: TestRandomizer())
        expect {
            authn.logout(token: Authn.Token(token: saml2)).test()
        } == true
    }

    class TestAuthenticator: Authenticator {
        var receivedDigests = [Data]()
        var info: SignedChallengeInfo

        init(info: SignedChallengeInfo) {
            self.info = info
        }

        func certificateInfo() -> Executable<Authn.CertificateInfo> {
            return Executable<Authn.CertificateInfo>.unit(self.info.certificateInfo)
        }

        func authenticate(challenge: Data) -> Executable<Signature> {
            receivedDigests.append(challenge)
            return Executable<Signature>.unit(self.info.signature)
        }
    }

    /// Struct that holds the information necessary for the response to a login challenge.
    struct SignedChallengeInfo {
        /// Info about the raw certificate data and the used `SignatureAlgoritm`
        let certificateInfo: Authn.CertificateInfo
        /// Raw digest that has been signed
        let challenge: Data
        /// The signature for the challenge
        let signature: Signature
    }

    static let allTests = [
        ("testLogin", testLogin),
        ("testRenewToken", testRenewToken),
        ("testLogout", testLogout)
    ]
}

// Test-utils
func xmlBodyContains(string: String) -> OHHTTPStubsTestBlock {
    return { req in
        let data = (req as NSURLRequest).ohhttpStubs_HTTPBody()
        guard let s_data = data, //swiftlint:disable:this identifier_name
              let actualDocument = try? DDXMLDocument(data: s_data, options: 0) else {
            return false
        }
        return actualDocument.xmlString.contains(string)
    }
}

extension DDXMLDocument: Equatable {
    static func ==(lhs: DDXMLDocument, rhs: DDXMLDocument) -> Bool { //swiftlint:disable:this operator_whitespace
        return lhs.canonicalize(mode: .exc_c14n) == rhs.canonicalize(mode: .exc_c14n)
    }
}

extension AuthnTest.SignedChallengeInfo: Equatable {
}
