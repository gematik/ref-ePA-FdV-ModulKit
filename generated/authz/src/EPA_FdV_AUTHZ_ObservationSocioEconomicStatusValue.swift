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
* specDomain: S22269 (C-0-T16614-A19918-S22269-cpt)
*/

public enum EPA_FdV_AUTHZ_ObservationSocioEconomicStatusValue:Int,CustomStringConvertible
{
    case  SOECSTAT
    case  ABUSE
    case  HMLESS
    case  ILGIM
    case  INCAR
    case  PROB
    case  REFUG
    case  UNEMPL

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ObservationSocioEconomicStatusValue?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ObservationSocioEconomicStatusValue?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ObservationSocioEconomicStatusValue(rawValue: i) 
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
            case  .SOECSTAT: return "SOECSTAT"
            case  .ABUSE: return "ABUSE"
            case  .HMLESS: return "HMLESS"
            case  .ILGIM: return "ILGIM"
            case  .INCAR: return "INCAR"
            case  .PROB: return "PROB"
            case  .REFUG: return "REFUG"
            case  .UNEMPL: return "UNEMPL"
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


        
