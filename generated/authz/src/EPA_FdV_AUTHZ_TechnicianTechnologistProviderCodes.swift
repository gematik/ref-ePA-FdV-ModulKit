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
* specDomain: S20356 (C-0-T19465-S20348-S20356-cpt)
*/

public enum EPA_FdV_AUTHZ_TechnicianTechnologistProviderCodes:Int,CustomStringConvertible
{
    case  _156F00000X
    case  _156FC0800X
    case  _156FC0801X
    case  _156FX1700X
    case  _156FX1100X
    case  _156FX1101X
    case  _156FX1800X
    case  _156FX1201X
    case  _156FX1202X
    case  _156FX1900X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_TechnicianTechnologistProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_TechnicianTechnologistProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_TechnicianTechnologistProviderCodes(rawValue: i) 
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
            case  ._156F00000X: return "156F00000X"
            case  ._156FC0800X: return "156FC0800X"
            case  ._156FC0801X: return "156FC0801X"
            case  ._156FX1700X: return "156FX1700X"
            case  ._156FX1100X: return "156FX1100X"
            case  ._156FX1101X: return "156FX1101X"
            case  ._156FX1800X: return "156FX1800X"
            case  ._156FX1201X: return "156FX1201X"
            case  ._156FX1202X: return "156FX1202X"
            case  ._156FX1900X: return "156FX1900X"
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


        
