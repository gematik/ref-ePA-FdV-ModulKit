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
* specDomain: S20524 (C-0-T19465-S20522-S20524-cpt)
*/

public enum EPA_FdV_AUTHZ_PodiatristProviderCodes:Int,CustomStringConvertible
{
    case  _213E00000X
    case  _213EG0000X
    case  _213EP1101X
    case  _213EP0504X
    case  _213ER0200X
    case  _213ES0000X
    case  _213ES0131X
    case  _213ES0103X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_PodiatristProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_PodiatristProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_PodiatristProviderCodes(rawValue: i) 
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
            case  ._213E00000X: return "213E00000X"
            case  ._213EG0000X: return "213EG0000X"
            case  ._213EP1101X: return "213EP1101X"
            case  ._213EP0504X: return "213EP0504X"
            case  ._213ER0200X: return "213ER0200X"
            case  ._213ES0000X: return "213ES0000X"
            case  ._213ES0131X: return "213ES0131X"
            case  ._213ES0103X: return "213ES0103X"
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


        
