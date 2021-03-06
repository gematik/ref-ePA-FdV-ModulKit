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
* abstDomain: A13219 (C-0-T13129-A13130-A13211-A13219-cpt)
*/

public enum EPA_FdV_AUTHZ_EyeAndVisionServiceProviderTechnicianAndOrTechnologistHIPAA:Int,CustomStringConvertible
{
    case  _156FC0800N
    case  _156FC0801N
    case  _156FX1700N
    case  _156FX1100N
    case  _156FX1101N
    case  _156FX1800N
    case  _156FX1201N
    case  _156FX1202N
    case  _156FX1900N

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_EyeAndVisionServiceProviderTechnicianAndOrTechnologistHIPAA?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_EyeAndVisionServiceProviderTechnicianAndOrTechnologistHIPAA?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_EyeAndVisionServiceProviderTechnicianAndOrTechnologistHIPAA(rawValue: i) 
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
            case  ._156FC0800N: return "156FC0800N"
            case  ._156FC0801N: return "156FC0801N"
            case  ._156FX1700N: return "156FX1700N"
            case  ._156FX1100N: return "156FX1100N"
            case  ._156FX1101N: return "156FX1101N"
            case  ._156FX1800N: return "156FX1800N"
            case  ._156FX1201N: return "156FX1201N"
            case  ._156FX1202N: return "156FX1202N"
            case  ._156FX1900N: return "156FX1900N"
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


        
