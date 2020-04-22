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

// swiftlint:disable:identifier_name

/// EHR Services
public enum ServiceInterfaceName: String, CaseIterable {
    case IAuthenticationInsurant
    case IAuthorizationInsurant
    case IAuthorizationManagementInsurant
    case IAccountManagementInsurant
    case IDocumentManagementConnect
    case IDocumentManagementInsurant
    case IOCSPStatusInformation
    case IProxyDirectoryQuery
    case IGetKeySgd1
    case IGetKeySgd2
}

// swiftlint:enable:identifier_name

/// Fully Qualified Domain Name
public typealias FullyQualifiedDomainName = String

/**
    Supported URL Component schemes
 */
public enum URLScheme: String {
    case http
    case https
}

/**
    Status of service lookup in DNS
*/
public enum LookupStatus {
    /// lookup was successful, results are valid
    case success(name: FullyQualifiedDomainName, records: [GatewayModuleName: GatewayModulePathType])
    /// lookup failed
    case failed(error: Error)

    /**
        After successful lookup, it returns endpointURL for a given interface name

        - Parameters
            - interface: name of the gateway interface for the URL-endpoint
            - scheme: URL Scheme, default: .https
            - port: service port number, default: 443

        - Returns: URL of given interface name
                   nil, if URL could not be calculated or DNS lookup has not finished (successfully)
    */
    public func endpointURLForInterface(interface: ServiceInterfaceName, scheme: URLScheme = .https, port: Int? = 443)
            -> URL? {
        guard case .success(let fqdn, _) = self, let pathComponent = gatewayPath(moduleName: interface.gateway) else {
            return nil
        }

        var urlComponents = URLComponents()
        urlComponents.scheme = scheme.rawValue
        urlComponents.host = fqdn
        urlComponents.port = port
        urlComponents.path = pathComponent

        return urlComponents.url?.appendingPathComponent(interface.interfaceName)
    }

    /**
        Return the home community id after DNS lookup

        - Returns: home community id found in DNS lookup for given FQDN if NDS lookup was successful
     */
    public var homeCommunityId: String? {
        return gatewayPath(moduleName: .hcid)
    }

    private func gatewayPath(moduleName: GatewayModuleName) -> String? {
        if case .success(_, let records) = self {
            if let record = records[moduleName], record.validUntil >= Date() {
                return record.path
            }
        }
        return nil
    }
}

extension LookupStatus: Equatable {
    // swiftlint:disable:next operator_whitespace
    public static func ==(lhs: LookupStatus, rhs: LookupStatus) -> Bool {
        switch (lhs, rhs) {
        case (.success(let lhsRecords), .success(let rhsRecords)): return lhsRecords == rhsRecords
        case (.failed(error: _), .failed(error: _)): return true
        default: return false
        }
    }
}

/**
    Start lookup DNS for retrieving endpoint URLs of various ePA gateway services. Once
    lookup has been done successfully, endpoint URLs for interfaces in ServiceInterfaceName
    can be retrieved.
*/
public protocol ServiceLocatorType {
    /**
        start a new DNS lookup and provides a callback, to be called once finished

        - Parameters:
            - name: fully qualified domain name of ePA Electronic Health Record (EHR) system.
                          the fqdn is used for DNS lookup in order to complete URLs for the
                          various gateway services for the EHR system
            - queue: lookup processing queue
            - callbackQueue: callback will be called on callbackQueue
            - callback: callback provided in order to get informed once lookup has been finished
    */
    func lookup(name: FullyQualifiedDomainName,
                queue: DispatchQueue,
                callbackQueue: DispatchQueue,
                callback: @escaping (LookupStatus) -> Void)
}
