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
* abstDomain: A15925 (C-0-T12206-A15925-cpt)
*/

public enum EPA_FdV_AUTHZ_MemberRoleType:Int,CustomStringConvertible
{
    case  TRB

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_MemberRoleType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_MemberRoleType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_MemberRoleType(rawValue: i) 
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
            case  .TRB: return "TRB"
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


        
