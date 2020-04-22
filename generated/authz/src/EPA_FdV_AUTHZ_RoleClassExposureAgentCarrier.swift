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
* specDomain: S22350 (C-0-T11555-S13940-A10429-S22350-cpt)
*/

public enum EPA_FdV_AUTHZ_RoleClassExposureAgentCarrier:Int,CustomStringConvertible
{
    case  EXPAGTCAR
    case  EXPVECTOR
    case  FOMITE

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RoleClassExposureAgentCarrier?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RoleClassExposureAgentCarrier?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RoleClassExposureAgentCarrier(rawValue: i) 
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
            case  .EXPAGTCAR: return "EXPAGTCAR"
            case  .EXPVECTOR: return "EXPVECTOR"
            case  .FOMITE: return "FOMITE"
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


        
