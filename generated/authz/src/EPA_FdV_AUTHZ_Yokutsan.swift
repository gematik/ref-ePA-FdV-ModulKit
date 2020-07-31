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
* abstDomain: A18479 (C-0-T18130-A18413-A18479-cpt)
*/

public enum EPA_FdV_AUTHZ_Yokutsan:Int,CustomStringConvertible
{
    case  x_x002D_GSH
    case  x_x002D_ENH
    case  x_x002D_PYL
    case  x_x002D_TKH

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Yokutsan?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Yokutsan?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Yokutsan(rawValue: i) 
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
            case  .x_x002D_GSH: return "x-GSH"
            case  .x_x002D_ENH: return "x-ENH"
            case  .x_x002D_PYL: return "x-PYL"
            case  .x_x002D_TKH: return "x-TKH"
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


        