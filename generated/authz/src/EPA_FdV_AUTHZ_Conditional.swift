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
* abstDomain: A17720 (C-0-T17719-A17720-cpt)
*/

public enum EPA_FdV_AUTHZ_Conditional:Int,CustomStringConvertible
{
    case  CONFIRM
    case  NOTIFY

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Conditional?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Conditional?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Conditional(rawValue: i) 
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
            case  .CONFIRM: return "CONFIRM"
            case  .NOTIFY: return "NOTIFY"
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


        
