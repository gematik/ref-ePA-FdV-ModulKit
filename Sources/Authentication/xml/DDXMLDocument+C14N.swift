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
import KissXML

extension DDXMLDocument {
    /// Canonicalization modes from xmlC14NMode
    ///
    ///    XML_C14N_1_0 = 0 : Original C14N 1.0 spec
    ///    XML_C14N_EXCLUSIVE_1_0 = 1 : Exclusive C14N 1.0 spec
    ///    XML_C14N_1_1 = 2 : C14N 1.1 spec
    ///
    enum CanonicalizationMode {
        /// Canonical XML Version 1.0 → c14n
        case c14n
        /// Exclusive Canonical XML 1.0 → exc-c14n
        case exc_c14n // swiftlint:disable:this identifier_name
        /// Canonical XML Version 1.1 → c14n11
        case c14n11
        /// Canonical XML Version 2.0 → c14n2
        /// - note: unsupported
        case c14n2

        var value: Int32 {
            switch self {
            case .c14n: return 0
            case .exc_c14n: return 1
            case .c14n11: return 2
            case .c14n2: fatalError("Canonical XML Version 2.0 is unsupported by libxml2")
            }
        }
    }

    /// Canonicalize DDXMLDocument using libxml2' xmlC14NDocDumpMemory
    ///
    /// Creates the canonized image of given XML document into String.
    /// For details see "Canonical XML" (http://www.w3.org/TR/xml-c14n)
    /// or "Exclusive XML Canonicalization" (http://www.w3.org/TR/xml-exc-c14n)
    ///
    /// - Parameters:
    ///     - nodes: the nodes set to be included in the canonized image or empty list if all document nodes
    ///         should be included. Default: []
    ///     - mode: the c14n mode (@see `CanonicalizationMode`)
    ///     - namespaces: the list of inclusive namespace prefixes or empty list if there is no inclusive namespaces
    ///         (only for exclusive canonicalization, ignored otherwise)
    ///     - comments: include comments in the result. Default: false
    ///
    /// - Returns: the canonicalized document [or set to be included nodes] or nil when failed
    func canonicalize(nodes: [DDXMLNode] = [],
                      mode: CanonicalizationMode,
                      inclusive namespaces: [String] = [],
                      comments: Bool = false) -> String? {
        guard let xmlDocPtr = self.xmlDocPtr else {
            return nil
        }
        var nsPtr: [UnsafeMutablePointer<xmlChar>?] = Self.parseNsList(namespaces)
        defer {
            nsPtr.forEach { xmlCharPtr in
                xmlCharPtr?.deallocate()
            }
        }
        var retVal = String()
        var userDataPtr: NodeListWrapper = (list: nodes, count: nodes.count)
        let success = xmlC14NExecute(
            xmlDocPtr,
            Self.IsVisibleCallback,
            &userDataPtr,
            mode.value,
            &nsPtr,
            comments.toInt32(),
            Self.createOutputBuffer(&retVal)
        )

        return success >= 0 ? retVal : nil
    }

    private static func parseNsList(_ namespaces: [String]) -> [UnsafeMutablePointer<xmlChar>?] {
        var outPtr = [UnsafeMutablePointer<xmlChar>?](repeating: nil, count: namespaces.count + 1)
        for idx in 0..<namespaces.count {
            let charArray = namespaces[idx].utf8CString
            // We copy the namespace into the xmlChar buffer, therefore it needs to be released manually.
            let ptr = UnsafeMutablePointer<xmlChar>.allocate(capacity: charArray.count)
            charArray.withUnsafeBufferPointer { buffer in
                buffer.withMemoryRebound(to: xmlChar.self) { xmlChar in
                    //swiftlint:disable:next force_unwrapping
                    ptr.assign(from: xmlChar.baseAddress!, count: xmlChar.count)
                }
            }
            outPtr[idx] = ptr
        }
        return outPtr
    }

    private typealias NodeListWrapper = (list: [DDXMLNode], count: Int)

    /// Include all attributes and child elements + attributes
    private static let IsVisibleCallback: xmlC14NIsVisibleCallback = {
        (nodeList: UnsafeMutableRawPointer?, node: xmlNodePtr?, parent: xmlNodePtr?) -> Int32 in
        guard let listInfo = nodeList?.bindMemory(to: NodeListWrapper.self, capacity: 1).pointee,
              !listInfo.list.isEmpty else {
            return true.toInt32()
        }

        func shouldIncludeNode(_ current: xmlNodePtr?) -> Bool {
            guard let current = current else {
                return false
            }
            return listInfo.list.contains { searchNode in
                current == searchNode.xmlNodePtr
            } || shouldIncludeNode(current.pointee.parent)
        }

        return (shouldIncludeNode(node) || shouldIncludeNode(parent)).toInt32()
    }

    private static func createOutputBuffer(_ out: inout String) -> xmlOutputBufferPtr {
        return xmlOutputBufferCreateIO({ ctx, buffer, len in
            buffer?.withMemoryRebound(to: CChar.self, capacity: 0) { utf8ptr in
                if let str = String(utf8String: utf8ptr) {
                    ctx?.bindMemory(to: String.self, capacity: 1).pointee.append(str)
                }
            }
            return len
        }, { _ in Int32(0) },
            &out,
            nil
        )
    }
}

extension Bool {
    func toInt32() -> Int32 {
        if self == true {
            return 1
        } else {
            return 0
        }
    }
}
