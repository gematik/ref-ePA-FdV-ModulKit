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
* specDomain: S20172 (C-0-T19465-S20096-S20172-cpt)
*/

public enum EPA_FdV_AUTHZ_OrthopaedicSurgeryProviderCodes:Int,CustomStringConvertible
{
    case  _207X00000X
    case  _207XS0114X
    case  _207XX0004X
    case  _207XS0106X
    case  _207XS0117X
    case  _207XX0801X
    case  _207XX0005X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_OrthopaedicSurgeryProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_OrthopaedicSurgeryProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_OrthopaedicSurgeryProviderCodes(rawValue: i) 
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
            case  ._207X00000X: return "207X00000X"
            case  ._207XS0114X: return "207XS0114X"
            case  ._207XX0004X: return "207XX0004X"
            case  ._207XS0106X: return "207XS0106X"
            case  ._207XS0117X: return "207XS0117X"
            case  ._207XX0801X: return "207XX0801X"
            case  ._207XX0005X: return "207XX0005X"
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


        