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
* specDomain: S22277 (C-0-T16614-A19918-S22277-cpt)
*/

public enum EPA_FdV_AUTHZ_ObservationLivingSituationValue:Int,CustomStringConvertible
{
    case  LIVSIT
    case  ALONE
    case  DEPCHD
    case  DEPSPS
    case  DEPYGCHD
    case  FAM
    case  RELAT
    case  SPS
    case  UNREL

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ObservationLivingSituationValue?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ObservationLivingSituationValue?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ObservationLivingSituationValue(rawValue: i) 
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
            case  .LIVSIT: return "LIVSIT"
            case  .ALONE: return "ALONE"
            case  .DEPCHD: return "DEPCHD"
            case  .DEPSPS: return "DEPSPS"
            case  .DEPYGCHD: return "DEPYGCHD"
            case  .FAM: return "FAM"
            case  .RELAT: return "RELAT"
            case  .SPS: return "SPS"
            case  .UNREL: return "UNREL"
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


        
