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
* specDomain: S10803 (C-0-T10774-A10775-S10801-S10802-S10803-cpt)
*/

public enum EPA_FdV_AUTHZ_DataTypeSetOfCodedSimpleValue:Int,CustomStringConvertible
{
    case  SET_x003C_CS_x003E_

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_DataTypeSetOfCodedSimpleValue?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_DataTypeSetOfCodedSimpleValue?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_DataTypeSetOfCodedSimpleValue(rawValue: i) 
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
            case  .SET_x003C_CS_x003E_: return "SET<CS>"
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


        