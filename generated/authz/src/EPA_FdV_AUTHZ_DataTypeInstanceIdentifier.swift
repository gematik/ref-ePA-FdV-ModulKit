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
* specDomain: S10785 (C-0-T10774-A10775-S10785-cpt)
*/

public enum EPA_FdV_AUTHZ_DataTypeInstanceIdentifier:Int,CustomStringConvertible
{
    case  II

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_DataTypeInstanceIdentifier?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_DataTypeInstanceIdentifier?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_DataTypeInstanceIdentifier(rawValue: i) 
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
            case  .II: return "II"
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


        
