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
* abstDomain: A18307 (C-0-T18130-A18306-A18307-cpt)
*/

public enum EPA_FdV_AUTHZ_NorthernIroquoian:Int,CustomStringConvertible
{
    case  x_x002D_CAY
    case  x_x002D_MOH
    case  x_x002D_ONE
    case  x_x002D_ONO
    case  x_x002D_SEE
    case  x_x002D_TUS

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_NorthernIroquoian?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_NorthernIroquoian?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_NorthernIroquoian(rawValue: i) 
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
            case  .x_x002D_CAY: return "x-CAY"
            case  .x_x002D_MOH: return "x-MOH"
            case  .x_x002D_ONE: return "x-ONE"
            case  .x_x002D_ONO: return "x-ONO"
            case  .x_x002D_SEE: return "x-SEE"
            case  .x_x002D_TUS: return "x-TUS"
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


        