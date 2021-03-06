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
* abstDomain: A18339 (C-0-T18130-A18338-A18339-cpt)
*/

public enum EPA_FdV_AUTHZ_WesternMuskogean:Int,CustomStringConvertible
{
    case  x_x002D_CIC
    case  x_x002D_CCT

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_WesternMuskogean?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_WesternMuskogean?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_WesternMuskogean(rawValue: i) 
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
            case  .x_x002D_CIC: return "x-CIC"
            case  .x_x002D_CCT: return "x-CCT"
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


        
