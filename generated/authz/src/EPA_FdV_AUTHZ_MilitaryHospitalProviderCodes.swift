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
* specDomain: S20741 (C-0-T19465-S20733-S20741-cpt)
*/

public enum EPA_FdV_AUTHZ_MilitaryHospitalProviderCodes:Int,CustomStringConvertible
{
    case  _286500000X
    case  _2865C1500X
    case  _2865M2000X
    case  _2865X1600X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_MilitaryHospitalProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_MilitaryHospitalProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_MilitaryHospitalProviderCodes(rawValue: i) 
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
            case  ._286500000X: return "286500000X"
            case  ._2865C1500X: return "2865C1500X"
            case  ._2865M2000X: return "2865M2000X"
            case  ._2865X1600X: return "2865X1600X"
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


        
