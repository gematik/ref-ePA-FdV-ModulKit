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
* specDomain: S20264 (C-0-T19465-S20096-S20264-cpt)
*/

public enum EPA_FdV_AUTHZ_SurgeryProviderCodes:Int,CustomStringConvertible
{
    case  _208600000X
    case  _2086S0120X
    case  _2086S0122X
    case  _2086S0105X
    case  _2086S0102X
    case  _2086X0206X
    case  _208G00000X
    case  _204F00000X
    case  _2086S0127X
    case  _2086S0129X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SurgeryProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SurgeryProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SurgeryProviderCodes(rawValue: i) 
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
            case  ._208600000X: return "208600000X"
            case  ._2086S0120X: return "2086S0120X"
            case  ._2086S0122X: return "2086S0122X"
            case  ._2086S0105X: return "2086S0105X"
            case  ._2086S0102X: return "2086S0102X"
            case  ._2086X0206X: return "2086X0206X"
            case  ._208G00000X: return "208G00000X"
            case  ._204F00000X: return "204F00000X"
            case  ._2086S0127X: return "2086S0127X"
            case  ._2086S0129X: return "2086S0129X"
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


        
