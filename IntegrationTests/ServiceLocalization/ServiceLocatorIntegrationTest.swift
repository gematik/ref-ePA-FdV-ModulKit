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

final class ServiceLocatorIntegrationTest: XCTestCase {
    // To perform an integration test against an actual service locator, rename this function to testUrlOrchestration()
    //      and assign a url of a valid instance.
    func urlOrchestration() {
        var fqdn: String = "put address of localization service here"

        // tag::ServiceLocator[]
        let loc = ServiceLocator()
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
            // end::ServiceLocator[]
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

        let timeoutTime = DispatchTime.now() + DispatchTimeInterval.milliseconds(500)
        expect(semaphore.wait(timeout: timeoutTime)) == .success
    }
}
