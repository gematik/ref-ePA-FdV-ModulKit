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
* specDomain: S20631 (C-0-T19465-S20608-S20631-cpt)
*/

public enum EPA_FdV_AUTHZ_SpecialistTechnologistOtherProviderCodes:Int,CustomStringConvertible
{
    case  _246Z00000X
    case  _246ZA2600X
    case  _246ZB0500X
    case  _246ZB0301X
    case  _246ZB0302X
    case  _246ZB0600X
    case  _246ZE0500X
    case  _246ZE0600X
    case  _246ZG1000X
    case  _246ZG0701X
    case  _246ZI1000X
    case  _246ZN0300X
    case  _246ZS0400X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SpecialistTechnologistOtherProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SpecialistTechnologistOtherProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SpecialistTechnologistOtherProviderCodes(rawValue: i) 
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
            case  ._246Z00000X: return "246Z00000X"
            case  ._246ZA2600X: return "246ZA2600X"
            case  ._246ZB0500X: return "246ZB0500X"
            case  ._246ZB0301X: return "246ZB0301X"
            case  ._246ZB0302X: return "246ZB0302X"
            case  ._246ZB0600X: return "246ZB0600X"
            case  ._246ZE0500X: return "246ZE0500X"
            case  ._246ZE0600X: return "246ZE0600X"
            case  ._246ZG1000X: return "246ZG1000X"
            case  ._246ZG0701X: return "246ZG0701X"
            case  ._246ZI1000X: return "246ZI1000X"
            case  ._246ZN0300X: return "246ZN0300X"
            case  ._246ZS0400X: return "246ZS0400X"
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


        
