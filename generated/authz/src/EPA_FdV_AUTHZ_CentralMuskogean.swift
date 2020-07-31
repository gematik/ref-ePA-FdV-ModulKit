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
* abstDomain: A18342 (C-0-T18130-A18338-A18342-cpt)
*/

public enum EPA_FdV_AUTHZ_CentralMuskogean:Int,CustomStringConvertible
{
    case  x_x002D_AKZ
    case  x_x002D_CKU
    case  x_x002D_MIK

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_CentralMuskogean?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_CentralMuskogean?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_CentralMuskogean(rawValue: i) 
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
            case  .x_x002D_AKZ: return "x-AKZ"
            case  .x_x002D_CKU: return "x-CKU"
            case  .x_x002D_MIK: return "x-MIK"
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


        