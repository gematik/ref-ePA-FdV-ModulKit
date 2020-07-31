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
* abstDomain: A18624 (C-0-T18130-A18605-A18621-A18624-cpt)
*/

public enum EPA_FdV_AUTHZ_Cupan:Int,CustomStringConvertible
{
    case  x_x002D_CHL
    case  x_x002D_CUP
    case  x_x002D_LUI

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Cupan?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Cupan?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Cupan(rawValue: i) 
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
            case  .x_x002D_CHL: return "x-CHL"
            case  .x_x002D_CUP: return "x-CUP"
            case  .x_x002D_LUI: return "x-LUI"
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


        