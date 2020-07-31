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
* specDomain: S10648 (C-0-T10642-S14822-S10648-cpt)
*/

public enum EPA_FdV_AUTHZ_StreetName:Int,CustomStringConvertible
{
    case  STR
    case  STB
    case  STTYP

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_StreetName?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_StreetName?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_StreetName(rawValue: i) 
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
            case  .STR: return "STR"
            case  .STB: return "STB"
            case  .STTYP: return "STTYP"
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


        