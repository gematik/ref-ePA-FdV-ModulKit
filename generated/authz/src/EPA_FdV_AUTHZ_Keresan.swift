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
* abstDomain: A18319 (C-0-T18130-A18319-cpt)
*/

public enum EPA_FdV_AUTHZ_Keresan:Int,CustomStringConvertible
{
    case  x_x002D_KJQ
    case  x_x002D_KEE

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Keresan?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Keresan?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Keresan(rawValue: i) 
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
            case  .x_x002D_KJQ: return "x-KJQ"
            case  .x_x002D_KEE: return "x-KEE"
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


        
