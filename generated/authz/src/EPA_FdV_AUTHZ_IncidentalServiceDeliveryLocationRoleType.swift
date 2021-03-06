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
* abstDomain: A19451 (C-0-T12206-A17660-A19451-cpt)
*/

public enum EPA_FdV_AUTHZ_IncidentalServiceDeliveryLocationRoleType:Int,CustomStringConvertible
{
    case  COMM
    case  PTRES
    case  ACC
    case  SCHOOL
    case  WORK

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_IncidentalServiceDeliveryLocationRoleType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_IncidentalServiceDeliveryLocationRoleType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_IncidentalServiceDeliveryLocationRoleType(rawValue: i) 
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
            case  .COMM: return "COMM"
            case  .PTRES: return "PTRES"
            case  .ACC: return "ACC"
            case  .SCHOOL: return "SCHOOL"
            case  .WORK: return "WORK"
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


        
