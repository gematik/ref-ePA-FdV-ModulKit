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
* specDomain: S19770 (C-0-T12206-A19563-S17926-S16346-S19770-cpt)
*/

public enum EPA_FdV_AUTHZ_ParentInLaw:Int,CustomStringConvertible
{
    case  PRNINLAW
    case  FTHINLAW
    case  MTHINLAW

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ParentInLaw?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ParentInLaw?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ParentInLaw(rawValue: i) 
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
            case  .PRNINLAW: return "PRNINLAW"
            case  .FTHINLAW: return "FTHINLAW"
            case  .MTHINLAW: return "MTHINLAW"
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


        
