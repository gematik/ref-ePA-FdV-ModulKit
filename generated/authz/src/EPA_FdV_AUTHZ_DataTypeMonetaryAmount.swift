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
* specDomain: S10798 (C-0-T10774-A10775-A10794-S10798-cpt)
*/

public enum EPA_FdV_AUTHZ_DataTypeMonetaryAmount:Int,CustomStringConvertible
{
    case  MO

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_DataTypeMonetaryAmount?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_DataTypeMonetaryAmount?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_DataTypeMonetaryAmount(rawValue: i) 
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
            case  .MO: return "MO"
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


        