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
* specDomain: S19739 (C-0-T12206-A19563-S17926-S19739-cpt)
*/

public enum EPA_FdV_AUTHZ_GreatGrandparent:Int,CustomStringConvertible
{
    case  GGRPRN
    case  MGGRFTH
    case  MGGRMTH
    case  MGGRPRN
    case  PGGRFTH
    case  PGGRMTH
    case  PGGRPRN
    case  GGRFTH
    case  GGRMTH

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_GreatGrandparent?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_GreatGrandparent?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_GreatGrandparent(rawValue: i) 
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
            case  .GGRPRN: return "GGRPRN"
            case  .MGGRFTH: return "MGGRFTH"
            case  .MGGRMTH: return "MGGRMTH"
            case  .MGGRPRN: return "MGGRPRN"
            case  .PGGRFTH: return "PGGRFTH"
            case  .PGGRMTH: return "PGGRMTH"
            case  .PGGRPRN: return "PGGRPRN"
            case  .GGRFTH: return "GGRFTH"
            case  .GGRMTH: return "GGRMTH"
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


        
