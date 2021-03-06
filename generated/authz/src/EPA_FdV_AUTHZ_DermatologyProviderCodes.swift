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
* specDomain: S20106 (C-0-T19465-S20096-S20106-cpt)
*/

public enum EPA_FdV_AUTHZ_DermatologyProviderCodes:Int,CustomStringConvertible
{
    case  _207N00000X
    case  _207NI0002X
    case  _207NS0135X
    case  _207ND0900X
    case  _207ND0101X
    case  _207NP0225X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_DermatologyProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_DermatologyProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_DermatologyProviderCodes(rawValue: i) 
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
            case  ._207N00000X: return "207N00000X"
            case  ._207NI0002X: return "207NI0002X"
            case  ._207NS0135X: return "207NS0135X"
            case  ._207ND0900X: return "207ND0900X"
            case  ._207ND0101X: return "207ND0101X"
            case  ._207NP0225X: return "207NP0225X"
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


        
