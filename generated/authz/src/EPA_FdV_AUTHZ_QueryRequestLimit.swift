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
* vocSet: T19911 (C-0-T19911-cpt)
*/

public enum EPA_FdV_AUTHZ_QueryRequestLimit:Int,CustomStringConvertible
{
    case  RD

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_QueryRequestLimit?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_QueryRequestLimit?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_QueryRequestLimit(rawValue: i) 
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
            case  .RD: return "RD"
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


        
