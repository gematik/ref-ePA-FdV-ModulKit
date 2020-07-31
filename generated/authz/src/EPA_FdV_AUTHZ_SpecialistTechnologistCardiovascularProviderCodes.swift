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
* specDomain: S20623 (C-0-T19465-S20608-S20623-cpt)
*/

public enum EPA_FdV_AUTHZ_SpecialistTechnologistCardiovascularProviderCodes:Int,CustomStringConvertible
{
    case  _246X00000X
    case  _246XC2901X
    case  _246XS1301X
    case  _246XC2903X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SpecialistTechnologistCardiovascularProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SpecialistTechnologistCardiovascularProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SpecialistTechnologistCardiovascularProviderCodes(rawValue: i) 
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
            case  ._246X00000X: return "246X00000X"
            case  ._246XC2901X: return "246XC2901X"
            case  ._246XS1301X: return "246XS1301X"
            case  ._246XC2903X: return "246XC2903X"
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


        