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

import dnssd
import Foundation
import GemCommonsKit

typealias TxtRecordMap = [String: String]

struct RecordType {
    var key: String
    var value: String
    var ttl: UInt32
}

typealias LookupResult = Swift.Result<[RecordType], DNSLookupError>

enum DNSLookupError: String, Error {
    case badKey
    case noAuth
    case badSig
    case badTime
    case unknown
    case refused
    case timeout
    case invalid
    case badState
    case badFlags
    case firewall
    case noRouter
    case noMemory
    case badParam
    case transient
    case noSuchKey
    case doubleNAT
    case noSuchName
    case unsupported
    case pollingMode
    case noSuchRecord
    case nameConflict
    case nATTraversal
    case incompatible
    case badReference
    case notInitialized
    case alreadyRegistered
    case badInterfaceIndex
    case serviceNotRunning
    case nATPortMappingUnsupported
    case nATPortMappingDisabled
}

class DNSLookup {
    static let errorCodeMap: [Int: DNSLookupError] = [
        kDNSServiceErr_BadKey: .badKey,
        kDNSServiceErr_NoAuth: .noAuth,
        kDNSServiceErr_BadSig: .badSig,
        kDNSServiceErr_BadTime: .badTime,
        kDNSServiceErr_Unknown: .unknown,
        kDNSServiceErr_Refused: .refused,
        kDNSServiceErr_Timeout: .timeout,
        kDNSServiceErr_Invalid: .invalid,
        kDNSServiceErr_BadState: .badState,
        kDNSServiceErr_BadFlags: .badFlags,
        kDNSServiceErr_Firewall: .firewall,
        kDNSServiceErr_NoRouter: .noRouter,
        kDNSServiceErr_NoMemory: .noMemory,
        kDNSServiceErr_BadParam: .badParam,
        kDNSServiceErr_Transient: .transient,
        kDNSServiceErr_NoSuchKey: .noSuchKey,
        kDNSServiceErr_DoubleNAT: .doubleNAT,
        kDNSServiceErr_NoSuchName: .noSuchName,
        kDNSServiceErr_Unsupported: .unsupported,
        kDNSServiceErr_PollingMode: .pollingMode,
        kDNSServiceErr_NoSuchRecord: .noSuchRecord,
        kDNSServiceErr_NameConflict: .nameConflict,
        kDNSServiceErr_NATTraversal: .nATTraversal,
        kDNSServiceErr_Incompatible: .incompatible,
        kDNSServiceErr_BadReference: .badReference,
        kDNSServiceErr_NotInitialized: .notInitialized,
        kDNSServiceErr_BadInterfaceIndex: .badInterfaceIndex,
        kDNSServiceErr_ServiceNotRunning: .serviceNotRunning,
        kDNSServiceErr_NATPortMappingUnsupported: .nATPortMappingUnsupported,
        kDNSServiceErr_NATPortMappingDisabled: .nATPortMappingDisabled
    ]

    private static let callback: DNSServiceQueryRecordReply = {
        sdref, flags, ifIdx, errCode, fullname, rrtype, zrrclass, rdlen, rdata, ttl, resultContext -> Void in
        guard errCode == kDNSServiceErr_NoError else {
            // skip on error
            return
        }

        let resultPtr: UnsafeMutablePointer<[RecordType]>? = resultContext?.assumingMemoryBound(to: [RecordType].self)
        var records: [RecordType] = resultPtr?.pointee ?? []

        let numRecords = TXTRecordGetCount(rdlen, rdata)
        DLog("\(numRecords) items found in DNS TXT record")

        let keyBufSize = 256
        var keyBuf = [Int8](repeating: 0x0, count: keyBufSize)

        for itemIdx in 0..<numRecords {
            var valueLength: UInt8 = 0
            var valuePtr: UnsafeRawPointer?

            let err = TXTRecordGetItemAtIndex(rdlen,
                rdata,
                itemIdx,
                UInt16(keyBufSize),
                &keyBuf,
                &valueLength,
                &valuePtr)

            guard err == kDNSServiceErr_NoError else {
                DLog("Error getting DNS TXT record items at index: \(itemIdx)")
                continue
            }

            let key = String(cString: keyBuf)

            if valueLength > 0, let valuePtr = valuePtr {
                let bytes = Data(bytes: valuePtr, count: Int(valueLength))
                guard let value = String(bytes: bytes, encoding: .ascii) else {
                    DLog("Failed to decode TXT record value for key: \(key)")
                    continue
                }
                DLog("DNS TXT item: \(key) = \(value)")
                records.append(RecordType(key: key, value: value, ttl: ttl))
            }
        }
        resultPtr?.pointee = records
    }

    /**
       start a DNS lookup of TXT records and wait for the result

       - Parameter fqdn: FQDN to do the lookup for
       - Parameter queue: a DispatchQueue to be used for lookup and waiting for result
                          defaults to a global dispatch queue with userInteractive QoS level.
                          Cannot be DispatchQueue.main
       - Parameter timeout: maximum waiting time for answer of DNS daemon, defaults to 3 seconds
       - Parameter block: closure to be called once finished (successfully or unsuccessfully)

     */
    static func start(fqdn: String,
                      queue: DispatchQueue,
                      _ block: @escaping (LookupResult) -> Void) {
        if queue == DispatchQueue.main {
            preconditionFailure("Cannot do DNSLookup on DispatchQueue.main")
        }
        queue.async {
            // swiftlint:disable:next discouraged_optional_collection
            var records: [RecordType]?
            var serviceRef: DNSServiceRef?
            defer {
                if let serviceRef = serviceRef {
                    DNSServiceRefDeallocate(serviceRef)
                }
            }

            var result = DNSServiceQueryRecord(&serviceRef,
                0,
                0,
                fqdn,
                UInt16(kDNSServiceType_TXT),
                UInt16(kDNSServiceClass_IN),
                self.callback,
                &records)

            if result == kDNSServiceErr_NoError {
                result = queue.sync {
                    DNSServiceProcessResult(serviceRef)
                }
            }
            if result != kDNSServiceErr_NoError {
                block(.failure(DNSLookup.errorCodeMap[Int(result)] ?? .unknown))
            } else {
                block(.success(records ?? []))
            }
        }
    }
}
