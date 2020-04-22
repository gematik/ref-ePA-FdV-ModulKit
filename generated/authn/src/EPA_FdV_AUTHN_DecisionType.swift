//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------


import Foundation


public enum EPA_FdV_AUTHN_DecisionType:Int,CustomStringConvertible
{
    case  Permit
    case  Deny
    case  Indeterminate

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHN_DecisionType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHN_DecisionType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHN_DecisionType(rawValue: i) 
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
            case  .Permit: return "Permit"
            case  .Deny: return "Deny"
            case  .Indeterminate: return "Indeterminate"
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


        
