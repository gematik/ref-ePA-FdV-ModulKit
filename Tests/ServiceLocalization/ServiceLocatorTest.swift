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

@testable import ePA_FdV_ServiceLocalization
import Foundation
import GemCommonsKit
import Nimble
import XCTest

final class ServiceLocatorTest: XCTestCase {
    static let validRecords = [
        RecordType(key: "authn", value: "/authn", ttl: 100),
        RecordType(key: "authz", value: "/authz", ttl: 100),
        RecordType(key: "avzd", value: "/avzd", ttl: 100),
        RecordType(key: "docv", value: "/docv", ttl: 100),
        RecordType(key: "ocspf", value: "/ocspf", ttl: 100),
        RecordType(key: "sgd1", value: "/sgd1", ttl: 100),
        RecordType(key: "sgd2", value: "/sgd2", ttl: 100),
        RecordType(key: "hcid", value: "1.2.276.0.76.3.1.91", ttl: 100),
        RecordType(key: "txtvers", value: "1", ttl: 100)
    ]

    func testUrlOrchestration() {
        let fqdn = "any.fqdn.url"
        var actualFqdn: FullyQualifiedDomainName?
        let mockDNSLookupFunc: DNSLookupFunc = { fqdnBlock, queue, callback in
            actualFqdn = fqdnBlock
            callback(.success(Self.validRecords))
        }

        let loc = ServiceLocator(mockDNSLookupFunc)
        let semaphore = DispatchSemaphore(value: 0)

        loc.lookup(name: fqdn, callbackQueue: DispatchQueue.global(qos: .userInteractive)) { result in
            let endpoints: [ServiceInterfaceName: String] =
                ServiceInterfaceName.allCases.reduce(into: [:]) { acc, serviceName in
                    if let endpoint = result.endpointURLForInterface(interface: serviceName) {
                        acc[serviceName] = endpoint.absoluteString
                    }
                }

            expect(endpoints[.IAuthenticationInsurant])
                    == "https://\(fqdn):443/authn/I_Authentication_Insurant"
            expect(endpoints[.IAuthorizationInsurant])
                    == "https://\(fqdn):443/authz/I_Authorization_Insurant"
            expect(endpoints[.IAuthorizationManagementInsurant])
                    == "https://\(fqdn):443/authz/I_Authorization_Management_Insurant"
            expect(endpoints[.IAccountManagementInsurant])
                    == "https://\(fqdn):443/docv/I_Account_Management_Insurant"
            expect(endpoints[.IDocumentManagementInsurant])
                    == "https://\(fqdn):443/docv/I_Document_Management_Insurant"
            expect(endpoints[.IDocumentManagementConnect])
                    == "https://\(fqdn):443/docv/I_Document_Management_Connect"
            expect(endpoints[.IOCSPStatusInformation])
                    == "https://\(fqdn):443/ocspf/I_OCSP_Status_Information"
            expect(endpoints[.IProxyDirectoryQuery])
                    == "https://\(fqdn):443/avzd/I_Proxy_Directory_Query"
            expect(endpoints[.IGetKeySgd1]) == "https://\(fqdn):443/sgd1/"
            expect(endpoints[.IGetKeySgd2]) == "https://\(fqdn):443/sgd2/"
            expect(result.homeCommunityId) == "1.2.276.0.76.3.1.91"

            semaphore.signal()
        }

        expect(fqdn) == actualFqdn

        let timeoutTime = DispatchTime.now() + DispatchTimeInterval.milliseconds(500)
        expect(semaphore.wait(timeout: timeoutTime)) == .success
    }

    static let expiredRecords = [
        RecordType(key: "authn", value: "/authentication", ttl: 0),
        RecordType(key: "authz", value: "/authorization", ttl: 0),
        RecordType(key: "avzd", value: "/verzeichnisdienst", ttl: 0),
        RecordType(key: "docv", value: "/document/management", ttl: 0),
        RecordType(key: "ocspf", value: "/proxy/ocsp/status", ttl: 0),
        RecordType(key: "sgd1", value: "/keygen", ttl: 0),
        RecordType(key: "sgd2", value: "/schluesselgenerierung", ttl: 0),
        RecordType(key: "hcid", value: "1.2.3.100.20.5.7.22.6.9.255.2.1", ttl: 0),
        RecordType(key: "txtvers", value: "1", ttl: 0)
    ]

    func testExpiredUrlOrchestration() {
        let fqdn = "any.fqdn.url"
        var actualFqdn: FullyQualifiedDomainName?
        let mockDNSLookupFunc: DNSLookupFunc = { fqdnBlock, queue, callback in
            actualFqdn = fqdnBlock
            callback(.success(Self.expiredRecords))
        }

        let loc = ServiceLocator(mockDNSLookupFunc)
        let semaphore = DispatchSemaphore(value: 0)

        loc.lookup(name: fqdn, callbackQueue: DispatchQueue.global(qos: .userInteractive)) { result in
            let endpoints: [ServiceInterfaceName: String] =
                ServiceInterfaceName.allCases.reduce(into: [:]) { acc, serviceName in
                    if let endpoint = result.endpointURLForInterface(interface: serviceName) {
                        acc[serviceName] = endpoint.absoluteString
                    }
                }

            expect(endpoints[.IAuthenticationInsurant]).to(beNil())
            expect(endpoints[.IAuthorizationInsurant]).to(beNil())
            expect(endpoints[.IAuthorizationManagementInsurant]).to(beNil())
            expect(endpoints[.IAccountManagementInsurant]).to(beNil())
            expect(endpoints[.IDocumentManagementInsurant]).to(beNil())
            expect(endpoints[.IDocumentManagementConnect]).to(beNil())
            expect(endpoints[.IOCSPStatusInformation]).to(beNil())
            expect(endpoints[.IProxyDirectoryQuery]).to(beNil())
            expect(endpoints[.IGetKeySgd1]).to(beNil())
            expect(endpoints[.IGetKeySgd2]).to(beNil())
            expect(result.homeCommunityId).to(beNil())

            semaphore.signal()
        }

        expect(fqdn) == actualFqdn

        let timeoutTime = DispatchTime.now() + DispatchTimeInterval.milliseconds(500)
        expect(semaphore.wait(timeout: timeoutTime)) == .success
    }

    func testFailedUrlOrchestration() {
        let fqdn = "any.fqdn.url"
        var actualFqdn: FullyQualifiedDomainName?
        let mockDNSLookupFunc: DNSLookupFunc = { fqdnBlock, queue, callback in
            actualFqdn = fqdnBlock
            callback(.failure(DNSLookupError.incompatible))
        }

        let loc = ServiceLocator(mockDNSLookupFunc)
        let semaphore = DispatchSemaphore(value: 0)

        loc.lookup(name: fqdn, callbackQueue: DispatchQueue.global(qos: .userInteractive)) { result in
            expect(result) == .failed(error: DNSLookupError.incompatible)
            semaphore.signal()
        }

        expect(fqdn) == actualFqdn

        let timeoutTime = DispatchTime.now() + DispatchTimeInterval.milliseconds(500)
        expect(semaphore.wait(timeout: timeoutTime)) == .success
    }
}
