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
* specDomain: S10795 (C-0-T10774-A10775-A10794-S10795-cpt)
*/

public enum EPA_FdV_AUTHZ_DataTypeIntegerNumber:Int,CustomStringConvertible
{
    case  INT

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_DataTypeIntegerNumber?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_DataTypeIntegerNumber?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_DataTypeIntegerNumber(rawValue: i) 
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
            case  .INT: return "INT"
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


        
