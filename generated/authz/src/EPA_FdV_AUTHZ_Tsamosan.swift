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
* abstDomain: A18533 (C-0-T18130-A18523-A18533-cpt)
*/

public enum EPA_FdV_AUTHZ_Tsamosan:Int,CustomStringConvertible
{
    case  x_x002D_COW
    case  x_x002D_CEA
    case  x_x002D_QUN
    case  x_x002D_CJH

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Tsamosan?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Tsamosan?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Tsamosan(rawValue: i) 
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
            case  .x_x002D_COW: return "x-COW"
            case  .x_x002D_CEA: return "x-CEA"
            case  .x_x002D_QUN: return "x-QUN"
            case  .x_x002D_CJH: return "x-CJH"
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


        