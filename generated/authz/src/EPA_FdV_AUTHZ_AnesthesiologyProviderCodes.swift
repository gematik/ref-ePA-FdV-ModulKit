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
* specDomain: S20100 (C-0-T19465-S20096-S20100-cpt)
*/

public enum EPA_FdV_AUTHZ_AnesthesiologyProviderCodes:Int,CustomStringConvertible
{
    case  _207L00000X
    case  _207LA0401X
    case  _207LC0200X
    case  _207LP2900X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_AnesthesiologyProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_AnesthesiologyProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_AnesthesiologyProviderCodes(rawValue: i) 
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
            case  ._207L00000X: return "207L00000X"
            case  ._207LA0401X: return "207LA0401X"
            case  ._207LC0200X: return "207LC0200X"
            case  ._207LP2900X: return "207LP2900X"
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


        
