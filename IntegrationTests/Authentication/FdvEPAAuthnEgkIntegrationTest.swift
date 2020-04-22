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

import CardSimulationTerminalTestCase
import DataKit
@testable import ePA_FdV_Authn
import ePA_FdV_HealthCardAuthn
import Foundation
import GemCommonsKit
import HealthCardAccess
import HealthCardControl
import Nimble
import XCTest

/// Integration tests using a simulation of a German Health Card (eGk) as an `Authenticator` and an internal Aktor to
/// talk to.
///
/// Although gematik internal components are used, this code is merely intended for use as a reference.
final class FdvEPAAuthnEgkIntegrationTest: CardSimulationTerminalTestCase {
    /// Configuration of a gematik internally use German Health Card simulation
    static let egkConfigFile = "Configuration/configuration_EGK_80276883110000215412_gema5.xml"
    /// Assign a valid URL of an Aktor instance to this variable
    var aktorAuthnURL: String!

    override class func configFile() -> URL? {
        let bundle = Bundle(for: FdvEPAAuthnEgkIntegrationTest.self)
        let path = bundle.testResourceFilePath(in: "Resources", for: self.egkConfigFile)
        return path.asURL
    }

    override class func healthCardStatus() -> HealthCardStatus {
        return .valid(cardType: .egk(generation: .g2_1))
    }

    func authnLoginWithEgk() {
        // swiftlint:disable force_unwrapping
        // tag::Authentication[]
        let authn = Authn(service: URL(string: self.aktorAuthnURL)!)
        let authenticator = HealthCardAuthn(healthCard: CardSimulationTerminalTestCase.healthCard)

        try? verifyMrPinForSigning()
        expect {
            authn.login(authenticator: authenticator).test()
        }.toNot(beNil())
        // end::Authentication[]
        // swiftlint:enable force_unwrapping
    }

    func authnLoginRenewTokenLogoutWithEgk() {
        //swiftlint:disable:next force_unwrapping
        let authn = Authn(service: URL(string: self.aktorAuthnURL)!)
        let authenticator = HealthCardAuthn(healthCard: CardSimulationTerminalTestCase.healthCard)

        try? verifyMrPinForSigning()
        expect { () -> Bool in
            // login
            guard let loginToken: Authn.Token = authn.login(authenticator: authenticator).test() else {
                Nimble.fail("Could not request login token")
                return false
            }
            // renew
            guard let renewedToken: Authn.Token = authn.renew(token: loginToken).test() else {
                Nimble.fail("Could not request renewed token")
                return false
            }
            // logout
            guard let logoutSuccess: Bool = authn.logout(token: renewedToken).test() else {
                Nimble.fail("Could not perform logout")
                return false
            }
            return logoutSuccess
        } == true
    }

    func authnFailRenewExpiredToken() {
        //swiftlint:disable:next force_unwrapping
        let authn = Authn(service: URL(string: self.aktorAuthnURL)!, random: UUIDRandomizer())
        let authenticator = HealthCardAuthn(healthCard: CardSimulationTerminalTestCase.healthCard)
        let expiredTokenURL = URL(fileURLWithPath: #file)
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .appendingPathComponent("Tests")
                .appendingPathComponent("Authentication")
                .appendingPathComponent("Resources.bundle")
                .appendingPathComponent("saml2_token.txt")
        let tokenContent = try! String(contentsOf: expiredTokenURL) // swiftlint:disable:this force_try
        let token = Authn.Token(token: tokenContent)

        try? verifyMrPinForSigning()
        expect { () -> Swift.Error? in
            authn.renew(token: token).testError()
        }.toNot(beNil())

    }

    private func verifyMrPinForSigning() throws {
        let format2Pin = try! Format2Pin(pincode: "123456") // swiftlint:disable:this force_try
        CardSimulationTerminalTestCase
                .healthCard.verify(pin: format2Pin, type: EgkFileSystem.Pin.mrpinHome)
                .run(on: Executor.trampoline)
    }
}
