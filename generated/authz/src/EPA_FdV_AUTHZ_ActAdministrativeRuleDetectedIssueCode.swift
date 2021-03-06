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
* abstDomain: A19621 (C-0-T14878-A19692-A19781-A16124-A19429-A19621-cpt)
*/

public enum EPA_FdV_AUTHZ_ActAdministrativeRuleDetectedIssueCode:Int,CustomStringConvertible
{
    case  KEY205
    case  KEY204

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActAdministrativeRuleDetectedIssueCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActAdministrativeRuleDetectedIssueCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActAdministrativeRuleDetectedIssueCode(rawValue: i) 
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
            case  .KEY205: return "KEY205"
            case  .KEY204: return "KEY204"
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


        
