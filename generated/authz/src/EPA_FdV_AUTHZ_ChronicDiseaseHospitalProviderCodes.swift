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
* specDomain: S20735 (C-0-T19465-S20733-S20735-cpt)
*/

public enum EPA_FdV_AUTHZ_ChronicDiseaseHospitalProviderCodes:Int,CustomStringConvertible
{
    case  _281P00000X
    case  _281PC2000X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ChronicDiseaseHospitalProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ChronicDiseaseHospitalProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ChronicDiseaseHospitalProviderCodes(rawValue: i) 
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
            case  ._281P00000X: return "281P00000X"
            case  ._281PC2000X: return "281PC2000X"
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


        
