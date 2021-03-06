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
* specDomain: S21519 (C-0-T13953-A13954-A19708-S21519-cpt)
*/

public enum EPA_FdV_AUTHZ_ActSubstanceAdministrationImmunizationCode:Int,CustomStringConvertible
{
    case  IMMUNIZ
    case  BOOSTER
    case  INITIMMUNIZ

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActSubstanceAdministrationImmunizationCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActSubstanceAdministrationImmunizationCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActSubstanceAdministrationImmunizationCode(rawValue: i) 
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
            case  .IMMUNIZ: return "IMMUNIZ"
            case  .BOOSTER: return "BOOSTER"
            case  .INITIMMUNIZ: return "INITIMMUNIZ"
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


        
