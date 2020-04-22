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

@testable import ePA_FdV_Authn
import Foundation
import KissXML
import XCTest

class DDXMLDocumentExtC14NTest: XCTestCase {

    // swiftlint:disable line_length
    static let xmlSource = "<soap:Envelope xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\"><soap:Header><Action     " +
        "xmlns=\"http://www.w3.org/2005/08/addressing\">http://docs.oasis-open.org/ws-sx/ws-trust/200512/RSTR/Challenge</Action>" +
        "<MessageID xmlns=\"http://www.w3.org/2005/08/addressing\">urn:uuid:55723135-807d-43b3-a7d6-f61bbb2b1290</MessageID>" +
        "<To xmlns=\"http://www.w3.org/2005/08/addressing\">http://www.w3.org/2005/08/addressing/anonymous</To>" +
        "<RelatesTo xmlns=\"http://www.w3.org/2005/08/addressing\">urn:uuid:f23604b2-56e9-4eb2-9fe0-d74af73d683f</RelatesTo>" +
        "</soap:Header><soap:Body><RequestSecurityTokenResponse xmlns=\"http://docs.oasis-open.org/ws-sx/ws-trust/200512\" " +
        "xmlns:ns2=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\" " +
        "xmlns:ns3=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" " +
        "xmlns:ns4=\"http://www.w3.org/2005/08/addressing\" xmlns:ns5=\"http://ws.gematik.de/fa/phrext/v1.0\" " +
        "xmlns:ns6=\"http://ws.gematik.de/tel/error/v2.0\" xmlns:ns7=\"http://ws.gematik.de/fd/phrs/I_Authentication_Insurant/v1.1\" " +
        "xmlns:ns8=\"http://www.w3.org/2001/04/xmlenc#\" xmlns:ns9=\"http://www.w3.org/2000/09/xmldsig#\" " +
        "xmlns:ns10=\"http://schemas.xmlsoap.org/ws/2004/09/policy\" xmlns:ns11=\"urn:oasis:names:tc:SAML:2.0:assertion\" " +
        "xmlns:ns12=\"http://www.w3.org/2006/05/addressing/wsdl\">" +
        "<SignChallenge>" +
        "<Challenge>CAmxL6qzQI01mcyBKQ4r0D4TjsjnBYTHLOkFz_JE9LXFX2ufOAdME2HMADAygn6phAym6mazA22Zjpa-9_dAKCSVvT5xRtL2yIaqv5-oxKThBs" +
        "uNX3a14VDKnxDC78Hopsoz--WAy9D73HdMMkVZG2bNGZuzDmNKc_CScwDzQ4eDekViwDIK54wl9Zuvhy7a1mf8zEZhhEZutb6DkjMwVk5UuHNKLER74XUrw3Va-" +
        "vGVeFGWxpQwDCKAtV3xW7x_Fe-N02bOml08Q8Xc_0r_0TZ0hZcTpvQIBKMwOdp2ygXMO1k5ggG56DtpTLoHhvd6yBOmQ3KDhYuN5aRpL-cR2g==" +
        "</Challenge></SignChallenge></RequestSecurityTokenResponse></soap:Body></soap:Envelope>"

    static let expected = "<soap:Envelope xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\">" +
        "<soap:Header><Action xmlns=\"http://www.w3.org/2005/08/addressing\">" +
        "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RSTR/Challenge</Action><MessageID " +
        "xmlns=\"http://www.w3.org/2005/08/addressing\">urn:uuid:55723135-807d-43b3-a7d6-f61bbb2b1290</MessageID>" +
        "<To xmlns=\"http://www.w3.org/2005/08/addressing\">http://www.w3.org/2005/08/addressing/anonymous</To>" +
        "<RelatesTo xmlns=\"http://www.w3.org/2005/08/addressing\">urn:uuid:f23604b2-56e9-4eb2-9fe0-d74af73d683f" +
        "</RelatesTo></soap:Header><soap:Body><RequestSecurityTokenResponse xmlns=\"http://docs.oasis-open.org/ws-sx/ws-trust/200512\">" +
        "<SignChallenge>" +
        "<Challenge>CAmxL6qzQI01mcyBKQ4r0D4TjsjnBYTHLOkFz_JE9LXFX2ufOAdME2HMADAygn6phAym6mazA22Zjpa-9_dAKCSVvT5xRtL2yIaqv5-oxKThBsuN" +
        "X3a14VDKnxDC78Hopsoz--WAy9D73HdMMkVZG2bNGZuzDmNKc_CScwDzQ4eDekViwDIK54wl9Zuvhy7a1mf8zEZhhEZutb6DkjMwVk5UuHNKLER74XUrw3Va-vGV" +
        "eFGWxpQwDCKAtV3xW7x_Fe-N02bOml08Q8Xc_0r_0TZ0hZcTpvQIBKMwOdp2ygXMO1k5ggG56DtpTLoHhvd6yBOmQ3KDhYuN5aRpL-cR2g==</Challenge>" +
        "</SignChallenge></RequestSecurityTokenResponse></soap:Body></soap:Envelope>"

    static let expectedInclusive = "<soap:Envelope xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\"><soap:Header>" +
        "<Action xmlns=\"http://www.w3.org/2005/08/addressing\">http://docs.oasis-open.org/ws-sx/ws-trust/200512/RSTR/Challenge" +
        "</Action><MessageID xmlns=\"http://www.w3.org/2005/08/addressing\">urn:uuid:55723135-807d-43b3-a7d6-f61bbb2b1290</MessageID>" +
        "<To xmlns=\"http://www.w3.org/2005/08/addressing\">http://www.w3.org/2005/08/addressing/anonymous</To><RelatesTo " +
        "xmlns=\"http://www.w3.org/2005/08/addressing\">urn:uuid:f23604b2-56e9-4eb2-9fe0-d74af73d683f</RelatesTo></soap:Header>" +
        "<soap:Body><RequestSecurityTokenResponse xmlns=\"http://docs.oasis-open.org/ws-sx/ws-trust/200512\" xmlns:ns10=\"" +
        "http://schemas.xmlsoap.org/ws/2004/09/policy\" xmlns:ns11=\"urn:oasis:names:tc:SAML:2.0:assertion\" xmlns:ns12=\"" +
        "http://www.w3.org/2006/05/addressing/wsdl\" xmlns:ns2=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-" +
        "wss-wssecurity-utility-1.0.xsd\" xmlns:ns3=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" " +
        "xmlns:ns4=\"http://www.w3.org/2005/08/addressing\" xmlns:ns5=\"http://ws.gematik.de/fa/phrext/v1.0\" xmlns:ns6=\"" +
        "http://ws.gematik.de/tel/error/v2.0\" xmlns:ns7=\"http://ws.gematik.de/fd/phrs/I_Authentication_Insurant/v1.1\" xmlns:ns8=\"" +
        "http://www.w3.org/2001/04/xmlenc#\" xmlns:ns9=\"http://www.w3.org/2000/09/xmldsig#\"><SignChallenge><Challenge>CAmxL6qzQI01mcyBK" +
        "Q4r0D4TjsjnBYTHLOkFz_JE9LXFX2ufOAdME2HMADAygn6phAym6mazA22Zjpa-9_dAKCSVvT5xRtL2yIaqv5-oxKThBsuNX3a14VDKnxDC78Hopsoz--WAy9D73HdM" +
        "MkVZG2bNGZuzDmNKc_CScwDzQ4eDekViwDIK54wl9Zuvhy7a1mf8zEZhhEZutb6DkjMwVk5UuHNKLER74XUrw3Va-vGVeFGWxpQwDCKAtV3xW7x_Fe-N02bOml08Q8Xc_0r" +
        "_0TZ0hZcTpvQIBKMwOdp2ygXMO1k5ggG56DtpTLoHhvd6yBOmQ3KDhYuN5aRpL-cR2g==</Challenge></SignChallenge></RequestSecurityTokenResponse></s" +
        "oap:Body></soap:Envelope>"

    static let expectedBody = "<soap:Body xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\">" +
        "<RequestSecurityTokenResponse xmlns=\"http://docs.oasis-open.org/ws-sx/ws-trust/200512\"><SignChallenge>" +
        "<Challenge>CAmxL6qzQI01mcyBKQ4r0D4TjsjnBYTHLOkFz_JE9LXFX2ufOAdME2HMADAygn6phAym6mazA22Zjpa-9_dAKCSVvT5xRtL2yIaqv5-oxKThBsuN" +
        "X3a14VDKnxDC78Hopsoz--WAy9D73HdMMkVZG2bNGZuzDmNKc_CScwDzQ4eDekViwDIK54wl9Zuvhy7a1mf8zEZhhEZutb6DkjMwVk5UuHNKLER74XUrw3Va-vGV" +
        "eFGWxpQwDCKAtV3xW7x_Fe-N02bOml08Q8Xc_0r_0TZ0hZcTpvQIBKMwOdp2ygXMO1k5ggG56DtpTLoHhvd6yBOmQ3KDhYuN5aRpL-cR2g==</Challenge>" +
        "</SignChallenge></RequestSecurityTokenResponse></soap:Body>"

    static let expectedBodyInclusiveNamespaces = "<soap:Body xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\">" +
        "<RequestSecurityTokenResponse xmlns=\"http://docs.oasis-open.org/ws-sx/ws-trust/200512\" xmlns:ns2=\"http" +
        "://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\"><SignChallenge>" +
        "<Challenge>CAmxL6qzQI01mcyBKQ4r0D4TjsjnBYTHLOkFz_JE9LXFX2ufOAdME2HMADAygn6phAym6mazA22Zjpa-9_dAKCSVvT5xRtL2yIaqv5-oxKThBsuN" +
        "X3a14VDKnxDC78Hopsoz--WAy9D73HdMMkVZG2bNGZuzDmNKc_CScwDzQ4eDekViwDIK54wl9Zuvhy7a1mf8zEZhhEZutb6DkjMwVk5UuHNKLER74XUrw3Va-vGV" +
        "eFGWxpQwDCKAtV3xW7x_Fe-N02bOml08Q8Xc_0r_0TZ0hZcTpvQIBKMwOdp2ygXMO1k5ggG56DtpTLoHhvd6yBOmQ3KDhYuN5aRpL-cR2g==</Challenge>" +
        "</SignChallenge></RequestSecurityTokenResponse></soap:Body>"

    // swiftlint:enable line_length

    func testCanonicalizeXmlExclusive() {
        let document = try! DDXMLDocument(xmlString: Self.xmlSource, options: 0) //swiftlint:disable:this force_try
        let canonicalized = document.canonicalize(mode: .exc_c14n)
        XCTAssertEqual(canonicalized, Self.expected)
    }

    func testCanonicalizeXmlInclusive() {
        let document = try! DDXMLDocument(xmlString: Self.xmlSource, options: 0) //swiftlint:disable:this force_try
        let canonicalized = document.canonicalize(mode: .c14n)
        XCTAssertEqual(canonicalized, Self.expectedInclusive)
    }

    func testCanonicalizeXmlExclusiveNodes() throws {
        // Trying to canonicalize specific nodes (and its children)
        //https://dev.w3.org/XInclude-Test-Suite/libxml2-2.4.24/libxml2-2.4.24/testC14N.c
        let document = try! DDXMLDocument(xmlString: Self.xmlSource, options: 0) //swiftlint:disable:this force_try
        let nodes = try! document.nodes(forXPath: "//soap:Body[1]") //swiftlint:disable:this force_try
        let canonicalized = document.canonicalize(nodes: nodes, mode: .exc_c14n)
        XCTAssertEqual(canonicalized, Self.expectedBody)
    }

    func testCanonicalizeXmlExclusiveNodesInclusiveNamespaces() throws {
        // Trying to canonicalize specific nodes (and its children)
        //https://dev.w3.org/XInclude-Test-Suite/libxml2-2.4.24/libxml2-2.4.24/testC14N.c
        let document = try! DDXMLDocument(xmlString: Self.xmlSource, options: 0) //swiftlint:disable:this force_try
        let nodes = try! document.nodes(forXPath: "//soap:Body[1]") //swiftlint:disable:this force_try
        let canonicalized = document.canonicalize(nodes: nodes, mode: .exc_c14n, inclusive: ["soap", "ns2"])
        XCTAssertEqual(canonicalized, Self.expectedBodyInclusiveNamespaces)
    }
}
