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
* specDomain: S20453 (C-0-T19465-S20434-S20448-S20453-cpt)
*/

public enum EPA_FdV_AUTHZ_VeterinarianProviderCodes:Int,CustomStringConvertible
{
    case  _174M00000X
    case  _174MM1900X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_VeterinarianProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_VeterinarianProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_VeterinarianProviderCodes(rawValue: i) 
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
            case  ._174M00000X: return "174M00000X"
            case  ._174MM1900X: return "174MM1900X"
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


        
