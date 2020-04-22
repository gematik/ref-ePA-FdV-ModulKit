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
* specDomain: S11563 (C-0-T12206-A19563-S17926-S16360-S11563-cpt)
*/

public enum EPA_FdV_AUTHZ_ChildInLaw:Int,CustomStringConvertible
{
    case  CHLDINLAW
    case  DAUINLAW
    case  SONINLAW

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ChildInLaw?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ChildInLaw?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ChildInLaw(rawValue: i) 
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
            case  .CHLDINLAW: return "CHLDINLAW"
            case  .DAUINLAW: return "DAUINLAW"
            case  .SONINLAW: return "SONINLAW"
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


        
