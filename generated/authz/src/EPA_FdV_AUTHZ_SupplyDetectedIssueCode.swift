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
* abstDomain: A16691 (C-0-T14878-A19692-A19781-A16124-A16656-A16691-cpt)
*/

public enum EPA_FdV_AUTHZ_SupplyDetectedIssueCode:Int,CustomStringConvertible
{
    case  TOOLATE
    case  TOOSOON

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SupplyDetectedIssueCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SupplyDetectedIssueCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SupplyDetectedIssueCode(rawValue: i) 
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
            case  .TOOLATE: return "TOOLATE"
            case  .TOOSOON: return "TOOSOON"
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


        
