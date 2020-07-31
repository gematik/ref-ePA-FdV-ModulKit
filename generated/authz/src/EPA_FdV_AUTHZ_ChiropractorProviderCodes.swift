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
* specDomain: S20309 (C-0-T19465-S20308-S20309-cpt)
*/

public enum EPA_FdV_AUTHZ_ChiropractorProviderCodes:Int,CustomStringConvertible
{
    case  _111N00000X
    case  _111NI0900X
    case  _111NN0400X
    case  _111NN1001X
    case  _111NX0100X
    case  _111NX0800X
    case  _111NR0200X
    case  _111NS0005X
    case  _111NT0100X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ChiropractorProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ChiropractorProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ChiropractorProviderCodes(rawValue: i) 
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
            case  ._111N00000X: return "111N00000X"
            case  ._111NI0900X: return "111NI0900X"
            case  ._111NN0400X: return "111NN0400X"
            case  ._111NN1001X: return "111NN1001X"
            case  ._111NX0100X: return "111NX0100X"
            case  ._111NX0800X: return "111NX0800X"
            case  ._111NR0200X: return "111NR0200X"
            case  ._111NS0005X: return "111NS0005X"
            case  ._111NT0100X: return "111NT0100X"
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


        