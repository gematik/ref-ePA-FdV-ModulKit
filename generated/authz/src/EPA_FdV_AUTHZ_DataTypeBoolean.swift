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
* specDomain: S10776 (C-0-T10774-A10775-S10776-cpt)
*/

public enum EPA_FdV_AUTHZ_DataTypeBoolean:Int,CustomStringConvertible
{
    case  BL

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_DataTypeBoolean?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_DataTypeBoolean?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_DataTypeBoolean(rawValue: i) 
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
            case  .BL: return "BL"
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


        