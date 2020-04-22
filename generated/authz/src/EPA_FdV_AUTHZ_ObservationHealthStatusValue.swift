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
* specDomain: S22290 (C-0-T16614-A19918-S22290-cpt)
*/

public enum EPA_FdV_AUTHZ_ObservationHealthStatusValue:Int,CustomStringConvertible
{
    case  HLSTAT
    case  IVDRG
    case  DISABLE
    case  DRUG
    case  PGNT

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ObservationHealthStatusValue?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ObservationHealthStatusValue?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ObservationHealthStatusValue(rawValue: i) 
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
            case  .HLSTAT: return "HLSTAT"
            case  .IVDRG: return "IVDRG"
            case  .DISABLE: return "DISABLE"
            case  .DRUG: return "DRUG"
            case  .PGNT: return "PGNT"
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


        
