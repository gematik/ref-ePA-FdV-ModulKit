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

import CardReaderProviderApi
import ePA_FdV_Authn
@testable import ePA_FdV_HealthCardAuthn
import Foundation
import GemCommonsKit
import HealthCardAccess
import HealthCardControl
import Nimble
import XCTest

class HealthCardAuthnTest: XCTestCase {

    typealias CommandMessageHandler = (CommandType, TimeInterval, TimeInterval) throws -> ResponseType

    class MockChannel: CardChannelType {
        var card: CardType {
            fatalError("Not implemented")
        }
        var channelNumber: Int = 0
        var extendedLengthSupported: Bool = false
        var maxMessageLength: Int = 0x1000
        var maxResponseLength: Int = 0x1000

        let handler: CommandMessageHandler

        init(messageHandler: @escaping CommandMessageHandler) {
            self.handler = messageHandler
        }

        func transmit(command: CommandType, writeTimeout: TimeInterval, readTimeout: TimeInterval)
        throws -> ResponseType {
            return try handler(command, writeTimeout, readTimeout)
        }

        func close() throws {
        }
    }

    class MockHealthCard: HealthCardType {
        private(set) var status: HealthCardStatus
        private(set) var currentCardChannel: CardChannelType

        init(status: HealthCardStatus, currentCardChannel: CardChannelType) {
            self.status = status
            self.currentCardChannel = currentCardChannel
        }
    }

    enum TestError: Swift.Error {
        case unsupportedCommand
    }

    func testEGK_E256_authenticate() { //swiftlint:disable:this function_body_length
        let fcpResourcesPath = URL(fileURLWithPath: #file)
                .deletingLastPathComponent()
                .appendingPathComponent("Resources.bundle")
                .appendingPathComponent("FCP")
                .appendingPathComponent("fcp_A000000167455349474E.dat")

        //swiftlint:disable:next force_try
        let fcp = try! FileControlParameter.parse(data: fcpResourcesPath.readFileContents())
        let certSize = Int(fcp.size)
        let mockCertificate = Data([UInt8](repeating: 0x55, count: certSize))
        let mockChallenge = Data([UInt8](repeating: 0x56, count: 32))
        let mockSignature = Data([UInt8](repeating: 0x56, count: 64))

        let egkCardStatus = HealthCardStatus.valid(cardType: HealthCardPropertyType.egk(generation: .g2_1))
        let commandHandler: CommandMessageHandler = { command, _, _ in
            let selectCommand = HealthCardCommand.Select.selectFile(with: AutCertInfo.efAutE256.certificate.aid)
                    .apduCommand
            let selectEfCommand = try HealthCardCommand.Select.selectEfRequestingFcp(
                    with: AutCertInfo.efAutE256.certificate.fid!, //swiftlint:disable:this force_unwrapping
                    expectedLength: 0x100
            ).apduCommand
            let readCommand = try HealthCardCommand.Read.readFileCommand(ne: certSize, offset: 0)
            let selectESignCommand = HealthCardCommand.Select.selectFile(with: AutCertInfo.efAutE256.eSign)
            let manageSeCommand =
                    try HealthCardCommand.ManageSE.selectSigning(key: AutCertInfo.efAutE256.key,
                                                                 dfSpecific: true,
                                                                 algorithm: AutCertInfo.efAutE256.algorithm)
            let signCommand = try HealthCardCommand.PsoDSA.sign(mockChallenge)
            if command == selectCommand {
                return try APDU.Response(body: Data(), sw1: 0x90, sw2: 0x0)
            } else if command == selectEfCommand {
                return try APDU.Response(body: fcpResourcesPath.readFileContents(), sw1: 0x90, sw2: 0x0)
            } else if command == readCommand {
                return try APDU.Response(body: mockCertificate, sw1: 0x90, sw2: 0x0)
            } else if command == selectESignCommand {
                return try APDU.Response(body: Data(), sw1: 0x90, sw2: 0x0)
            } else if command == manageSeCommand {
                return try APDU.Response(body: Data(), sw1: 0x90, sw2: 0x0)
            } else if command == signCommand {
                return try APDU.Response(body: mockSignature, sw1: 0x90, sw2: 0x0)
            }
            throw TestError.unsupportedCommand
        }

        let channel = MockChannel(messageHandler: commandHandler)
        let card = MockHealthCard(status: egkCardStatus, currentCardChannel: channel)
        let eGk21Authenticator = HealthCardAuthn(healthCard: card)

        let certificateInfo = eGk21Authenticator.certificateInfo().test()
        expect(certificateInfo?.certificate) == mockCertificate
        expect(certificateInfo?.signatureAlgorithm) == Authn.SignatureAlgorithm.ecdsaSha256

        let signature = eGk21Authenticator.authenticate(challenge: mockChallenge).test()
        expect(signature) == mockSignature
    }

    static let allTests = [
        ("testEGK_E256_authenticate", testEGK_E256_authenticate)
    ]
}
