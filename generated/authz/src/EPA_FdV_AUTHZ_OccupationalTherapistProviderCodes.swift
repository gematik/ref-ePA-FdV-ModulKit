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
* specDomain: S20538 (C-0-T19465-S20532-S20538-cpt)
*/

public enum EPA_FdV_AUTHZ_OccupationalTherapistProviderCodes:Int,CustomStringConvertible
{
    case  _225X00000X
    case  _225XE1200X
    case  _225XH1200X
    case  _225XH1300X
    case  _225XN1300X
    case  _225XP0200X
    case  _225XR0403X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_OccupationalTherapistProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_OccupationalTherapistProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_OccupationalTherapistProviderCodes(rawValue: i) 
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
            case  ._225X00000X: return "225X00000X"
            case  ._225XE1200X: return "225XE1200X"
            case  ._225XH1200X: return "225XH1200X"
            case  ._225XH1300X: return "225XH1300X"
            case  ._225XN1300X: return "225XN1300X"
            case  ._225XP0200X: return "225XP0200X"
            case  ._225XR0403X: return "225XR0403X"
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


        