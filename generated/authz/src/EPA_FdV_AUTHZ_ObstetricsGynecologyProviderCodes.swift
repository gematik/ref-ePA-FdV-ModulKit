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
* specDomain: S20163 (C-0-T19465-S20096-S20163-cpt)
*/

public enum EPA_FdV_AUTHZ_ObstetricsGynecologyProviderCodes:Int,CustomStringConvertible
{
    case  _207V00000X
    case  _207VC0200X
    case  _207VX0201X
    case  _207VG0400X
    case  _207VM0101X
    case  _207VX0000X
    case  _207VE0102X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ObstetricsGynecologyProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ObstetricsGynecologyProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ObstetricsGynecologyProviderCodes(rawValue: i) 
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
            case  ._207V00000X: return "207V00000X"
            case  ._207VC0200X: return "207VC0200X"
            case  ._207VX0201X: return "207VX0201X"
            case  ._207VG0400X: return "207VG0400X"
            case  ._207VM0101X: return "207VM0101X"
            case  ._207VX0000X: return "207VX0000X"
            case  ._207VE0102X: return "207VE0102X"
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


        