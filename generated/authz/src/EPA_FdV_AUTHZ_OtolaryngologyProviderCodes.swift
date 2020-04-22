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
* specDomain: S20179 (C-0-T19465-S20096-S20179-cpt)
*/

public enum EPA_FdV_AUTHZ_OtolaryngologyProviderCodes:Int,CustomStringConvertible
{
    case  _207Y00000X
    case  _207YS0123X
    case  _207YX0602X
    case  _207YX0905X
    case  _207YX0901X
    case  _207YP0228X
    case  _207YX0007X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_OtolaryngologyProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_OtolaryngologyProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_OtolaryngologyProviderCodes(rawValue: i) 
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
            case  ._207Y00000X: return "207Y00000X"
            case  ._207YS0123X: return "207YS0123X"
            case  ._207YX0602X: return "207YX0602X"
            case  ._207YX0905X: return "207YX0905X"
            case  ._207YX0901X: return "207YX0901X"
            case  ._207YP0228X: return "207YP0228X"
            case  ._207YX0007X: return "207YX0007X"
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


        
