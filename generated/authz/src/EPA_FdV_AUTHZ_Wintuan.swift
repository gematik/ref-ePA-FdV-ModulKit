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
* abstDomain: A18431 (C-0-T18130-A18413-A18431-cpt)
*/

public enum EPA_FdV_AUTHZ_Wintuan:Int,CustomStringConvertible
{
    case  x_x002D_WIT

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Wintuan?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Wintuan?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Wintuan(rawValue: i) 
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
            case  .x_x002D_WIT: return "x-WIT"
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


        
