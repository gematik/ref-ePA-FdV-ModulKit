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
* abstDomain: A11047 (C-0-T11046-A11047-cpt)
*/

public enum EPA_FdV_AUTHZ_Extensibility:Int,CustomStringConvertible
{
    case  CNE
    case  CWE

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Extensibility?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Extensibility?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Extensibility(rawValue: i) 
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
            case  .CNE: return "CNE"
            case  .CWE: return "CWE"
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


        