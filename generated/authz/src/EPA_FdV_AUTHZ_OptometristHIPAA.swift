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
* specDomain: S13212 (C-0-T13129-A13130-A13211-S13212-cpt)
*/

public enum EPA_FdV_AUTHZ_OptometristHIPAA:Int,CustomStringConvertible
{
    case  _152W00000N
    case  _152WC0800N
    case  _152WL0500N
    case  _152WX0102N
    case  _152WP0200N
    case  _152WS0006N
    case  _152WV0400N

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_OptometristHIPAA?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_OptometristHIPAA?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_OptometristHIPAA(rawValue: i) 
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
            case  ._152W00000N: return "152W00000N"
            case  ._152WC0800N: return "152WC0800N"
            case  ._152WL0500N: return "152WL0500N"
            case  ._152WX0102N: return "152WX0102N"
            case  ._152WP0200N: return "152WP0200N"
            case  ._152WS0006N: return "152WS0006N"
            case  ._152WV0400N: return "152WV0400N"
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


        
