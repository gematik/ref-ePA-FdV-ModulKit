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
import HealthCardAccess
import HealthCardControl

/// Signature is un-encoded signature Data without Algorithm information
public typealias Signature = Data
/// x509Certificate is DER encoded data
public typealias x509Certificate = Data // swiftlint:disable:this type_name

/// Generic Authenticator type for ePA (elektronische Patientenakte) authentication
public protocol Authenticator {
    /// Read the certificate info corresponding to the signing process.
    ///
    /// - Returns: Executor that emit a `CertificateInfo` holding the x509 certificate raw data and the signing
    ///     algorithm.
    func certificateInfo() -> Executable<Authn.CertificateInfo>

    /// Perform the ePA authentication process given a received challenge.
    ///
    /// - Parameter challenge: Challenge received to perform the authentication upon on.
    ///
    /// - Returns: Executor that emits a `Signature` (typealias for `Data`) for the given `challenge`
    ///     that should be verifiable with the `Authn.CertificateInfo` from `self.certificateInfo()`
    func authenticate(challenge: Data) -> Executable<Signature>
}

/// Authn client-side service implementer as defined in gemSpec_Authentisierung Vers_V1.1.0
/// Spezifikation Authentisierung des Versicherten ePA
public class Authn {
    private let service: AuthenticationProxyBinding

    /// Holds the information the signature can be validated with.
    public struct CertificateInfo {
        /// Certificate raw data
        public let certificate: x509Certificate
        /// Signature algorithm the signature is derived with
        public let signatureAlgorithm: SignatureAlgorithm

        /// Initialize a CertificateInfo with the signature raw data and the used signature algorithm.
        public init(certificate: x509Certificate, signatureAlgorithm: SignatureAlgorithm) {
            self.certificate = certificate
            self.signatureAlgorithm = signatureAlgorithm
        }
    }

    /// List of signature algorithms that can be used to sign a challenge for authentication.
    public enum SignatureAlgorithm {
        /// Sign with ECDSA using a SHA256 digest
        case ecdsaSha256
        /// Sign with RSA PSS with mask generation function
        case sha256RsaMgf1
    }

    /// Wrapper for string information to be passed around
    public struct Token {
        /// The wrapped token information
        public let token: String

        /// Initialize a Token with its information represented by a String
        ///
        /// - Parameter token: the token information
        public init(token: String) {
            self.token = token
        }
    }

    /// Initialize Authn service
    ///
    /// - Parameters:
    ///   - url: the base url for the Aktor Authn service.
    ///         [e.g. https://www.aktor-service.de/Authentication/I_Authentication_Insurant]
    public convenience init(service url: URL) {
        self.init(service: url, random: UUIDRandomizer())
    }

    /// Initialize Authn service
    ///
    /// - Parameters:
    ///   - url: the base url for the Aktor Authn service.
    ///         [e.g. https://www.aktor-service.de/Authentication/I_Authentication_Insurant]
    ///   - random: the randomizer to use for generating internal SOAP ref-IDs.
    internal init<R: Randomizer>(service url: URL, random: R) where R.Random == String {
        self.service = AuthenticationProxyBinding(service: url.absoluteString, random: random)
    }

    /// Create a login `Token` to be send to the ePa system to validate our authenticity.
    ///
    /// - Parameter authenticator: Instance of the `Authenticator` protocol
    ///
    /// - Returns: Executable that emits a `Token` that can be used to validate authenticity.
    public func login(authenticator: Authenticator) -> Executable<Token> {
        return loginCreateChallenge()
                .map(loginCreateToken)
                .flatMap { $0(authenticator) }
    }

    private func loginCreateChallenge() -> Executable<EPA_FdV_AUTHN_RequestSecurityTokenResponseType> {
        return Executable<EPA_FdV_AUTHN_RequestSecurityTokenResponseType>.evaluate {
            let tokenRequest = EPA_FdV_AUTHN_RequestSecurityTokenType()
            var error: Swift.Error?
            guard let result = try self.service.LoginCreateChallenge(RequestSecurityToken: tokenRequest,
                                                                     __error: &error) else {
                throw error ?? Error.unknown
            }
            return result
        }
    }

    private func loginCreateToken(challenge: EPA_FdV_AUTHN_RequestSecurityTokenResponseType) ->
            (Authenticator) -> Executable<Token> {
        return { authenticator in
            return Executable<EPA_FdV_AUTHN_RequestSecurityTokenResponseCollectionType>
                    .evaluate {
                        var error: Swift.Error?
                        self.service.authenticator = authenticator
                        defer {
                            self.service.authenticator = nil
                        }

                        let signChallengeResponseToken = try challenge.deriveSignChallengeResponse()
                        guard let response = try? self.service.LoginCreateToken(
                                RequestSecurityTokenResponse: signChallengeResponseToken,
                                __error: &error
                        ) else {

                            throw error ?? Error.unknown
                        }
                        return response
                    }
                    .map { (response: EPA_FdV_AUTHN_RequestSecurityTokenResponseCollectionType) -> Authn.Token in
                        guard let saml2 = response.parseToken() else {
                            throw SOAPError.missingSaml2Assertion
                        }
                        return saml2
                    }
        }
    }

    /// Request a new login `Token` to be send to the ePa system by renewing the provided `token`.
    ///
    /// - Parameter token: The `Token` to send to the service to request a renewed one.
    ///
    /// - Returns: Executable that emits a `Token` that can be used to validate authenticity.
    public func renew(token: Token) -> Executable<Token> {
        return Executable<EPA_FdV_AUTHN_RequestSecurityTokenResponseType>
                .evaluate {
                    let tokenRequest = EPA_FdV_AUTHN_RequestSecurityTokenType()
                    let contentsForRenew = EPA_FdV_AUTHN_RequestSecurityTokenType.contentsForRenew(token: token)
                    tokenRequest.any.append(contentsOf: contentsForRenew)
                    var error: Swift.Error?
                    guard let response = try self.service.RenewToken(RequestSecurityToken: tokenRequest,
                                                                     __error: &error)
                            else {
                        throw error ?? Error.unknown
                    }
                    return response
                }
                .map { (response: EPA_FdV_AUTHN_RequestSecurityTokenResponseType) -> Authn.Token in
                    guard let saml2 = response.parseToken() else {
                        throw SOAPError.missingSaml2Assertion
                    }
                    return saml2
                }
    }

    /// Logout [e.g. invalidate] an Authn.Token
    ///
    /// - Parameter token: Authentication `Token` to be invalidated
    ///
    /// - Returns: Executable that emits true if invalidation was successful otherwise false.
    public func logout(token: Token) -> Executable<Bool> {
        return Executable<EPA_FdV_AUTHN_RequestSecurityTokenResponseType>
                .evaluate {
                    let tokenRequest = EPA_FdV_AUTHN_RequestSecurityTokenType()
                    let contentsForLogout = EPA_FdV_AUTHN_RequestSecurityTokenType.contentsForLogout(token: token)
                    tokenRequest.any.append(contentsOf: contentsForLogout)
                    var error: Swift.Error?
                    guard let response = try self.service.LogoutToken(RequestSecurityToken: tokenRequest,
                                                                      __error: &error)
                            else {
                        throw error ?? Error.unknown
                    }
                    return response
                }
                .map { (response: EPA_FdV_AUTHN_RequestSecurityTokenResponseType) -> Bool in
                    return response.isTokenSuccessfullyCanceled()
                }
    }
}

extension Authn.Token: Equatable {
}
extension Authn.CertificateInfo: Equatable {
}
