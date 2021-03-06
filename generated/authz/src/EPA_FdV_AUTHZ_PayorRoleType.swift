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
* abstDomain: A19853 (C-0-T12206-A19690-A19853-cpt)
*/

public enum EPA_FdV_AUTHZ_PayorRoleType:Int,CustomStringConvertible
{
    case  ENROLBKR
    case  TPA
    case  UMO

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_PayorRoleType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_PayorRoleType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_PayorRoleType(rawValue: i) 
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
            case  .ENROLBKR: return "ENROLBKR"
            case  .TPA: return "TPA"
            case  .UMO: return "UMO"
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


        
