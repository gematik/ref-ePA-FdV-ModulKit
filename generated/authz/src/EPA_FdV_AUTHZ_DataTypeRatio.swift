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
* specDomain: S10800 (C-0-T10774-A10775-A10794-S10800-cpt)
*/

public enum EPA_FdV_AUTHZ_DataTypeRatio:Int,CustomStringConvertible
{
    case  RTO

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_DataTypeRatio?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_DataTypeRatio?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_DataTypeRatio(rawValue: i) 
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
            case  .RTO: return "RTO"
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


        
