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
import GemCommonsKit

public enum GatewayModuleName: String {
    case hcid
    case authn
    case authz
    case docv
    case ocspf
    case avzd
    case sgd1
    case sgd2
}

/// Gateway module path
public struct GatewayModulePathType {
    /// Module path
    public let path: String
    /// TTL expiration date
    public let validUntil: Date
}

extension GatewayModulePathType: Equatable {}

extension ServiceInterfaceName {
    var gateway: GatewayModuleName {
        switch self {
        case .IAuthenticationInsurant: return .authn
        case .IAuthorizationInsurant: return .authz
        case .IAuthorizationManagementInsurant: return .authz
        case .IAccountManagementInsurant: return .docv
        case .IDocumentManagementConnect: return .docv
        case .IDocumentManagementInsurant: return .docv
        case .IOCSPStatusInformation: return .ocspf
        case .IProxyDirectoryQuery: return .avzd
        case .IGetKeySgd1: return .sgd1
        case .IGetKeySgd2: return .sgd2
        }
    }

    var interfaceName: String {
        switch self {
        case .IAuthenticationInsurant: return "I_Authentication_Insurant"
        case .IAuthorizationInsurant: return "I_Authorization_Insurant"
        case .IAuthorizationManagementInsurant: return "I_Authorization_Management_Insurant"
        case .IAccountManagementInsurant: return "I_Account_Management_Insurant"
        case .IDocumentManagementConnect: return "I_Document_Management_Connect"
        case .IDocumentManagementInsurant: return "I_Document_Management_Insurant"
        case .IOCSPStatusInformation: return "I_OCSP_Status_Information"
        case .IProxyDirectoryQuery: return "I_Proxy_Directory_Query"
        case .IGetKeySgd1: return ""
        case .IGetKeySgd2: return ""
        }
    }
}

typealias DNSLookupFunc = (FullyQualifiedDomainName, DispatchQueue, @escaping (LookupResult) -> Void) -> Void

public class ServiceLocator: ServiceLocatorType {

    private let dnsLookupFunc: DNSLookupFunc

    init(_ lookupFunc: @escaping DNSLookupFunc) {
        dnsLookupFunc = lookupFunc
    }

    public convenience init() {
        self.init(DNSLookup.start)
    }

    public func lookup(name fqdn: String,
                       queue: DispatchQueue = DispatchQueue.global(qos: .userInteractive),
                       callbackQueue: DispatchQueue = DispatchQueue.main,
                       callback: @escaping (LookupStatus) -> Void) {
        func fillDnsTxtRecordValues(records: [RecordType], currentDate: Date = Date())
                -> [GatewayModuleName: GatewayModulePathType] {
            var dnsTxtRecordValues = [GatewayModuleName: GatewayModulePathType]()
            for record in records {
                if let modName = GatewayModuleName(rawValue: record.key) {
                    let path = GatewayModulePathType(
                        path: record.value,
                        validUntil: currentDate.addingTimeInterval(TimeInterval(record.ttl)))
                    dnsTxtRecordValues[modName] = path
                }
            }
            return dnsTxtRecordValues
        }

        dnsLookupFunc(fqdn, queue) { result in
            let status: LookupStatus

            switch result {
            case .failure(let error):
                status = .failed(error: error)
            case .success(let records):
                status = .success(name: fqdn, records: fillDnsTxtRecordValues(records: records))
            }

            DispatchQueue.global().async {
                callbackQueue.sync {
                    callback(status)
                }
            }
        }
    }
}
