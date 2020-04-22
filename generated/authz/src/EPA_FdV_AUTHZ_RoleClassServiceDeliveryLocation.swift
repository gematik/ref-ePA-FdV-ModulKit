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
* specDomain: S16927 (C-0-T11555-S13940-A19313-A19105-S16927-cpt)
*/

public enum EPA_FdV_AUTHZ_RoleClassServiceDeliveryLocation:Int,CustomStringConvertible
{
    case  SDLOC
    case  DSDLOC
    case  ISDLOC

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RoleClassServiceDeliveryLocation?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RoleClassServiceDeliveryLocation?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RoleClassServiceDeliveryLocation(rawValue: i) 
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
            case  .SDLOC: return "SDLOC"
            case  .DSDLOC: return "DSDLOC"
            case  .ISDLOC: return "ISDLOC"
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


        
