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
* abstDomain: A19787 (C-0-T14878-A19692-A19787-cpt)
*/

public enum EPA_FdV_AUTHZ_SupplyOrderAbortReasonCode:Int,CustomStringConvertible
{
    case  IMPROV
    case  INTOL
    case  NEWSTR
    case  NEWTHER

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SupplyOrderAbortReasonCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SupplyOrderAbortReasonCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SupplyOrderAbortReasonCode(rawValue: i) 
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
            case  .IMPROV: return "IMPROV"
            case  .INTOL: return "INTOL"
            case  .NEWSTR: return "NEWSTR"
            case  .NEWTHER: return "NEWTHER"
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


        