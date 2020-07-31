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
* abstDomain: A18164 (C-0-T18130-A18131-A18132-A18164-cpt)
*/

public enum EPA_FdV_AUTHZ_SaukFoxKickapoo:Int,CustomStringConvertible
{
    case  x_x002D_KIC
    case  x_x002D_SAC
    case  x_x002D_SJW

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SaukFoxKickapoo?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SaukFoxKickapoo?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SaukFoxKickapoo(rawValue: i) 
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
            case  .x_x002D_KIC: return "x-KIC"
            case  .x_x002D_SAC: return "x-SAC"
            case  .x_x002D_SJW: return "x-SJW"
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


        