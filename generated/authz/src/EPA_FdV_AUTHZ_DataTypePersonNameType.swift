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
* specDomain: S10789 (C-0-T10774-A10775-S10821-S10823-S10824-S10825-S10826-S10827-S10828-S10789-cpt)
*/

public enum EPA_FdV_AUTHZ_DataTypePersonNameType:Int,CustomStringConvertible
{
    case  PN

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_DataTypePersonNameType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_DataTypePersonNameType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_DataTypePersonNameType(rawValue: i) 
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
            case  .PN: return "PN"
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


        