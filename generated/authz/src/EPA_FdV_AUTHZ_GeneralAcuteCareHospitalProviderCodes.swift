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
* specDomain: S20737 (C-0-T19465-S20733-S20737-cpt)
*/

public enum EPA_FdV_AUTHZ_GeneralAcuteCareHospitalProviderCodes:Int,CustomStringConvertible
{
    case  _282N00000X
    case  _282NC2000X
    case  _282NC0060X
    case  _282NR1301X
    case  _282NW0100X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_GeneralAcuteCareHospitalProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_GeneralAcuteCareHospitalProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_GeneralAcuteCareHospitalProviderCodes(rawValue: i) 
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
            case  ._282N00000X: return "282N00000X"
            case  ._282NC2000X: return "282NC2000X"
            case  ._282NC0060X: return "282NC0060X"
            case  ._282NR1301X: return "282NR1301X"
            case  ._282NW0100X: return "282NW0100X"
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


        