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
* abstDomain: A18629 (C-0-T18130-A18605-A18629-cpt)
*/

public enum EPA_FdV_AUTHZ_Tepiman:Int,CustomStringConvertible
{
    case  x_x002D_PAP

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Tepiman?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Tepiman?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Tepiman(rawValue: i) 
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
            case  .x_x002D_PAP: return "x-PAP"
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


        
