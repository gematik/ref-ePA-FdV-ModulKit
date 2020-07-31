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
* specDomain: S10792 (C-0-T10774-A10775-S10821-S10822-S10777-S10778-S10779-S10792-cpt)
*/

public enum EPA_FdV_AUTHZ_DataTypeAddressPart:Int,CustomStringConvertible
{
    case  ADXP

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_DataTypeAddressPart?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_DataTypeAddressPart?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_DataTypeAddressPart(rawValue: i) 
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
            case  .ADXP: return "ADXP"
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


        