//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------


import Foundation

/**
* specDomain: S13232 (C-0-T13129-A13130-A13229-S13232-cpt)
*/

public enum EPA_FdV_AUTHZ_RegisteredNurseHIPAA:Int,CustomStringConvertible
{
    case  _163W00000N
    case  _163WA0400N
    case  _163WA2000N
    case  _163WC3500N
    case  _163WC0400N
    case  _163WC1400N
    case  _163WC1500N
    case  _163WC2100N
    case  _163WC1600N
    case  _163WC0200N
    case  _163WD0400N
    case  _163WD1100N
    case  _163WE0003N
    case  _163WE0900N
    case  _163WF0300N
    case  _163WG0100N
    case  _163WG0000N
    case  _163WG0600N
    case  _163WH0500N
    case  _163WH0200N
    case  _163WH1000N
    case  _163WI0600N
    case  _163WI0500N
    case  _163WL0100N
    case  _163WM1400N
    case  _163WM0102N
    case  _163WM0705N
    case  _163WN0002N
    case  _163WN0003N
    case  _163WN0300N
    case  _163WN0800N
    case  _163WN1003N
    case  _163WX0002N
    case  _163WX0003N
    case  _163WX0106N
    case  _163WX0200N
    case  _163WX1000N
    case  _163WX1100N
    case  _163WX0800N
    case  _163WX1500N
    case  _163WX0601N
    case  _163WP0000N
    case  _163WP0218N
    case  _163WP0200N
    case  _163WP1700N
    case  _163WP2200N
    case  _163WP2201N
    case  _163WP0808N
    case  _163WP0809N
    case  _163WP0807N
    case  _163WR0400N
    case  _163WR1000N
    case  _163WS0200N
    case  _163WS0121N
    case  _163WU0100N
    case  _163WW0101N
    case  _163WW0000N

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RegisteredNurseHIPAA?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RegisteredNurseHIPAA?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RegisteredNurseHIPAA(rawValue: i) 
        {
            if String(describing: item) == value
            {
                return item
            }
            i += 1
        }
       return nil
    }

    public var stringValue : String
    {
        return description
    }

    public var description : String
    {
        switch self
        {
            case  ._163W00000N: return "163W00000N"
            case  ._163WA0400N: return "163WA0400N"
            case  ._163WA2000N: return "163WA2000N"
            case  ._163WC3500N: return "163WC3500N"
            case  ._163WC0400N: return "163WC0400N"
            case  ._163WC1400N: return "163WC1400N"
            case  ._163WC1500N: return "163WC1500N"
            case  ._163WC2100N: return "163WC2100N"
            case  ._163WC1600N: return "163WC1600N"
            case  ._163WC0200N: return "163WC0200N"
            case  ._163WD0400N: return "163WD0400N"
            case  ._163WD1100N: return "163WD1100N"
            case  ._163WE0003N: return "163WE0003N"
            case  ._163WE0900N: return "163WE0900N"
            case  ._163WF0300N: return "163WF0300N"
            case  ._163WG0100N: return "163WG0100N"
            case  ._163WG0000N: return "163WG0000N"
            case  ._163WG0600N: return "163WG0600N"
            case  ._163WH0500N: return "163WH0500N"
            case  ._163WH0200N: return "163WH0200N"
            case  ._163WH1000N: return "163WH1000N"
            case  ._163WI0600N: return "163WI0600N"
            case  ._163WI0500N: return "163WI0500N"
            case  ._163WL0100N: return "163WL0100N"
            case  ._163WM1400N: return "163WM1400N"
            case  ._163WM0102N: return "163WM0102N"
            case  ._163WM0705N: return "163WM0705N"
            case  ._163WN0002N: return "163WN0002N"
            case  ._163WN0003N: return "163WN0003N"
            case  ._163WN0300N: return "163WN0300N"
            case  ._163WN0800N: return "163WN0800N"
            case  ._163WN1003N: return "163WN1003N"
            case  ._163WX0002N: return "163WX0002N"
            case  ._163WX0003N: return "163WX0003N"
            case  ._163WX0106N: return "163WX0106N"
            case  ._163WX0200N: return "163WX0200N"
            case  ._163WX1000N: return "163WX1000N"
            case  ._163WX1100N: return "163WX1100N"
            case  ._163WX0800N: return "163WX0800N"
            case  ._163WX1500N: return "163WX1500N"
            case  ._163WX0601N: return "163WX0601N"
            case  ._163WP0000N: return "163WP0000N"
            case  ._163WP0218N: return "163WP0218N"
            case  ._163WP0200N: return "163WP0200N"
            case  ._163WP1700N: return "163WP1700N"
            case  ._163WP2200N: return "163WP2200N"
            case  ._163WP2201N: return "163WP2201N"
            case  ._163WP0808N: return "163WP0808N"
            case  ._163WP0809N: return "163WP0809N"
            case  ._163WP0807N: return "163WP0807N"
            case  ._163WR0400N: return "163WR0400N"
            case  ._163WR1000N: return "163WR1000N"
            case  ._163WS0200N: return "163WS0200N"
            case  ._163WS0121N: return "163WS0121N"
            case  ._163WU0100N: return "163WU0100N"
            case  ._163WW0101N: return "163WW0101N"
            case  ._163WW0000N: return "163WW0000N"
        }
    }

    public func getValue() -> Int
    {
        return rawValue
    }

    func serialize(__parent:DDXMLNode)
    {
        __parent.stringValue = stringValue
    }
}


        
