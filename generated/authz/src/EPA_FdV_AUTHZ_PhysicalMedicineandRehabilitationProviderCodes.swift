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
* specDomain: S20223 (C-0-T19465-S20096-S20223-cpt)
*/

public enum EPA_FdV_AUTHZ_PhysicalMedicineandRehabilitationProviderCodes:Int,CustomStringConvertible
{
    case  _208100000X
    case  _2081P2900X
    case  _2081P0010X
    case  _2081P0004X
    case  _2081S0010X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_PhysicalMedicineandRehabilitationProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_PhysicalMedicineandRehabilitationProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_PhysicalMedicineandRehabilitationProviderCodes(rawValue: i) 
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
            case  ._208100000X: return "208100000X"
            case  ._2081P2900X: return "2081P2900X"
            case  ._2081P0010X: return "2081P0010X"
            case  ._2081P0004X: return "2081P0004X"
            case  ._2081S0010X: return "2081S0010X"
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


        