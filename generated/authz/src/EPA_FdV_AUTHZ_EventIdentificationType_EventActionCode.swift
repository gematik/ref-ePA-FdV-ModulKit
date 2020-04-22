//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------


import Foundation


public enum EPA_FdV_AUTHZ_EventIdentificationType_EventActionCode:Int,CustomStringConvertible
{
    case  C
    case  R
    case  U
    case  D
/**
* Execute
*/
    case  E

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_EventIdentificationType_EventActionCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_EventIdentificationType_EventActionCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_EventIdentificationType_EventActionCode(rawValue: i) 
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
            case  .C: return "C"
            case  .R: return "R"
            case  .U: return "U"
            case  .D: return "D"
/**
* Execute
*/
            case  .E: return "E"
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


        
