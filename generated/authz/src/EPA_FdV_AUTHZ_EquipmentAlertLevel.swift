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
* vocSet: T10896 (C-0-T10896-cpt)
*/

public enum EPA_FdV_AUTHZ_EquipmentAlertLevel:Int,CustomStringConvertible
{
    case  C
    case  N
    case  S
    case  W

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_EquipmentAlertLevel?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_EquipmentAlertLevel?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_EquipmentAlertLevel(rawValue: i) 
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
            case  .C: return "C"
            case  .N: return "N"
            case  .S: return "S"
            case  .W: return "W"
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


        