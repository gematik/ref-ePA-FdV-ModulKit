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

import ePA_FdV_Authn
import Foundation
import GemCommonsKit
import HealthCardAccess
import HealthCardControl

/// HealthCardAuthn is a class implementing the `Authenticator` protocol
/// to perform an authentication for the the ePA service (elektronische Patientenakte)
/// via a `HealthCardType`.
public class HealthCardAuthn {
    private let healthCard: HealthCardType

    /// Initialize a HealthCardAuthn  with a `HealthCardType`.
    ///
    /// - Parameters:
    ///   - healthCard: the associated card
    public init(healthCard: HealthCardType) {
        self.healthCard = healthCard
    }
}

extension HealthCardAuthn {
    public enum Error: Swift.Error {
        case unknownSigningAlgorithm(PSOAlgorithm)
    }
}

extension HealthCardAuthn: Authenticator {
    public func certificateInfo() -> Executable<Authn.CertificateInfo> {
        return self.healthCard.readAutCertificate()
                .map { (autCertificateResponse: HealthCardControl.AutCertificateResponse) in
                    let algorithm = autCertificateResponse.info.algorithm
                    let certificateDER = autCertificateResponse.certificate
                    return Authn.CertificateInfo(
                            certificate: certificateDER,
                            signatureAlgorithm: try Authn.SignatureAlgorithm.from(psoAlgorithm: algorithm)
                    )
                }
    }

    public func authenticate(challenge: Data) -> Executable<Signature> {
        return self.healthCard
                .sign(challenge: challenge)
                .map { (response: HealthCardResponseType) in
                    guard response.responseStatus == .success,
                          let signatureData = response.data else {
                        throw HealthCard.Error.unexpectedResponse(actual: response.responseStatus, expected: .success)
                    }
                    return signatureData
                }
    }
}

extension Authn.SignatureAlgorithm {
    /// Bridge from HealthCardAccessKit.PSOAlgorithm to ePA_FdV_Authn.Authn.SignatureAlgorithm
    static func from(psoAlgorithm: PSOAlgorithm) throws -> Authn.SignatureAlgorithm {
        switch psoAlgorithm {
        case .signECDSA: return .ecdsaSha256
        case .signPSS: return .sha256RsaMgf1
        @unknown default: throw HealthCardAuthn.Error.unknownSigningAlgorithm(psoAlgorithm)
        }
    }
}
