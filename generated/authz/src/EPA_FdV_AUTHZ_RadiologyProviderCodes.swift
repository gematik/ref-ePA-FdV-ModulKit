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
* specDomain: S20253 (C-0-T19465-S20096-S20253-cpt)
*/

public enum EPA_FdV_AUTHZ_RadiologyProviderCodes:Int,CustomStringConvertible
{
    case  _208500000X
    case  _2085B0100X
    case  _2085R0202X
    case  _2085U0001X
    case  _2085N0700X
    case  _2085N0904X
    case  _2085P0229X
    case  _2085R0001X
    case  _2085R0205X
    case  _2085R0203X
    case  _2085R0204X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RadiologyProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RadiologyProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RadiologyProviderCodes(rawValue: i) 
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
            case  ._208500000X: return "208500000X"
            case  ._2085B0100X: return "2085B0100X"
            case  ._2085R0202X: return "2085R0202X"
            case  ._2085U0001X: return "2085U0001X"
            case  ._2085N0700X: return "2085N0700X"
            case  ._2085N0904X: return "2085N0904X"
            case  ._2085P0229X: return "2085P0229X"
            case  ._2085R0001X: return "2085R0001X"
            case  ._2085R0205X: return "2085R0205X"
            case  ._2085R0203X: return "2085R0203X"
            case  ._2085R0204X: return "2085R0204X"
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


        
