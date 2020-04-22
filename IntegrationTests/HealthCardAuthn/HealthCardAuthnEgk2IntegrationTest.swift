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
import ePA_FdV_Authn
@testable import ePA_FdV_HealthCardAuthn
import Foundation
import GemCommonsKit
import HealthCardAccess
import Nimble
import XCTest

final class HealthCardAuthnEgk2IntegrationTest: CardSimulationTerminalTestCase {
    // swiftlint:disable:next force_try
    let challenge = try! Data(hex: "8843A24EFEBB06E428B1B03566EA7B58462DD8D83B5403A6B334AE5F6031D4C1")

    func testEGK_R2048_authenticate_Integration() {
        let format2Pin = try! Format2Pin(pincode: "123456") // swiftlint:disable:this force_try
        let eGk2Authenticator = HealthCardAuthn(healthCard: CardSimulationTerminalTestCase.healthCard)

        let certificateInfo = eGk2Authenticator.certificateInfo().test()
        expect(certificateInfo?.signatureAlgorithm) == Authn.SignatureAlgorithm.sha256RsaMgf1

        let signature = CardSimulationTerminalTestCase.healthCard.verify(pin: format2Pin,
                                                                         type: EgkFileSystem.Pin.mrpinHome)
                .flatMap { _ in
                    eGk2Authenticator.authenticate(challenge: self.challenge)
                }
                .test()
        expect(signature?.count) == 256
    }

    func testEGK_R2048_authenticate_failSecStatus_Integration() {
        let invalidFormat2Pin = try! Format2Pin(pincode: "654321") // swiftlint:disable:this force_try
        let eGk2Authenticator = HealthCardAuthn(healthCard: CardSimulationTerminalTestCase.healthCard)

        let expectError = CardSimulationTerminalTestCase.healthCard.verify(pin: invalidFormat2Pin,
                                                                           type: EgkFileSystem.Pin.mrpinHome)
                .flatMap { _ in
                    eGk2Authenticator.authenticate(challenge: self.challenge)
                }
                .testError()
        expect(expectError).to(beAKindOf(HealthCard.Error.self))
    }

    static let allTests = [
        ("testEGK_R2048_authenticate_Integration", testEGK_R2048_authenticate_Integration),
        ("testEGK_R2048_authenticate_failSecStatus_Integration", testEGK_R2048_authenticate_failSecStatus_Integration)
    ]
}
