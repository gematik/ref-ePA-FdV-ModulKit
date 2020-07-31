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
* abstDomain: A18193 (C-0-T18130-A18191-A18192-A18193-cpt)
*/

public enum EPA_FdV_AUTHZ_SirenikskiYupik:Int,CustomStringConvertible
{
    case  x_x002D_ESU
    case  x_x002D_ESS
    case  x_x002D_EMS

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SirenikskiYupik?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SirenikskiYupik?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SirenikskiYupik(rawValue: i) 
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
            case  .x_x002D_ESU: return "x-ESU"
            case  .x_x002D_ESS: return "x-ESS"
            case  .x_x002D_EMS: return "x-EMS"
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


        