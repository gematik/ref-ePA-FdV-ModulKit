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
* specDomain: S20370 (C-0-T19465-S20366-S20370-cpt)
*/

public enum EPA_FdV_AUTHZ_RegisteredNurseProviderCodes:Int,CustomStringConvertible
{
    case  _163W00000X
    case  _163WA0400X
    case  _163WA2000X
    case  _163WP2201X
    case  _163WC3500X
    case  _163WC0400X
    case  _163WC1400X
    case  _163WC1500X
    case  _163WC2100X
    case  _163WC1600X
    case  _163WC0200X
    case  _163WD0400X
    case  _163WD1100X
    case  _163WE0003X
    case  _163WE0900X
    case  _163WF0300X
    case  _163WG0100X
    case  _163WG0000X
    case  _163WG0600X
    case  _163WH0500X
    case  _163WH0200X
    case  _163WH1000X
    case  _163WI0600X
    case  _163WI0500X
    case  _163WL0100X
    case  _163WM0102X
    case  _163WM0705X
    case  _163WN0002X
    case  _163WN0003X
    case  _163WN0300X
    case  _163WN0800X
    case  _163WM1400X
    case  _163WN1003X
    case  _163WX0002X
    case  _163WX0003X
    case  _163WX0106X
    case  _163WX0200X
    case  _163WX1100X
    case  _163WX0800X
    case  _163WX1500X
    case  _163WX0601X
    case  _163WP0000X
    case  _163WP0218X
    case  _163WP0200X
    case  _163WP1700X
    case  _163WS0121X
    case  _163WP0808X
    case  _163WP0809X
    case  _163WP0807X
    case  _163WR0400X
    case  _163WR1000X
    case  _163WS0200X
    case  _163WU0100X
    case  _163WW0101X
    case  _163WW0000X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RegisteredNurseProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RegisteredNurseProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RegisteredNurseProviderCodes(rawValue: i) 
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
            case  ._163W00000X: return "163W00000X"
            case  ._163WA0400X: return "163WA0400X"
            case  ._163WA2000X: return "163WA2000X"
            case  ._163WP2201X: return "163WP2201X"
            case  ._163WC3500X: return "163WC3500X"
            case  ._163WC0400X: return "163WC0400X"
            case  ._163WC1400X: return "163WC1400X"
            case  ._163WC1500X: return "163WC1500X"
            case  ._163WC2100X: return "163WC2100X"
            case  ._163WC1600X: return "163WC1600X"
            case  ._163WC0200X: return "163WC0200X"
            case  ._163WD0400X: return "163WD0400X"
            case  ._163WD1100X: return "163WD1100X"
            case  ._163WE0003X: return "163WE0003X"
            case  ._163WE0900X: return "163WE0900X"
            case  ._163WF0300X: return "163WF0300X"
            case  ._163WG0100X: return "163WG0100X"
            case  ._163WG0000X: return "163WG0000X"
            case  ._163WG0600X: return "163WG0600X"
            case  ._163WH0500X: return "163WH0500X"
            case  ._163WH0200X: return "163WH0200X"
            case  ._163WH1000X: return "163WH1000X"
            case  ._163WI0600X: return "163WI0600X"
            case  ._163WI0500X: return "163WI0500X"
            case  ._163WL0100X: return "163WL0100X"
            case  ._163WM0102X: return "163WM0102X"
            case  ._163WM0705X: return "163WM0705X"
            case  ._163WN0002X: return "163WN0002X"
            case  ._163WN0003X: return "163WN0003X"
            case  ._163WN0300X: return "163WN0300X"
            case  ._163WN0800X: return "163WN0800X"
            case  ._163WM1400X: return "163WM1400X"
            case  ._163WN1003X: return "163WN1003X"
            case  ._163WX0002X: return "163WX0002X"
            case  ._163WX0003X: return "163WX0003X"
            case  ._163WX0106X: return "163WX0106X"
            case  ._163WX0200X: return "163WX0200X"
            case  ._163WX1100X: return "163WX1100X"
            case  ._163WX0800X: return "163WX0800X"
            case  ._163WX1500X: return "163WX1500X"
            case  ._163WX0601X: return "163WX0601X"
            case  ._163WP0000X: return "163WP0000X"
            case  ._163WP0218X: return "163WP0218X"
            case  ._163WP0200X: return "163WP0200X"
            case  ._163WP1700X: return "163WP1700X"
            case  ._163WS0121X: return "163WS0121X"
            case  ._163WP0808X: return "163WP0808X"
            case  ._163WP0809X: return "163WP0809X"
            case  ._163WP0807X: return "163WP0807X"
            case  ._163WR0400X: return "163WR0400X"
            case  ._163WR1000X: return "163WR1000X"
            case  ._163WS0200X: return "163WS0200X"
            case  ._163WU0100X: return "163WU0100X"
            case  ._163WW0101X: return "163WW0101X"
            case  ._163WW0000X: return "163WW0000X"
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


        
