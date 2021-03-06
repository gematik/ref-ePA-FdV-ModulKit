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
* abstDomain: A19786 (C-0-T14878-A19786-cpt)
*/

public enum EPA_FdV_AUTHZ_PharmacySupplyRequestRenewalRefusalReasonCode:Int,CustomStringConvertible
{
    case  FAMPHYS
    case  ONHOLD
    case  MODIFY
    case  ALREADYRX
    case  NEEDAPMT
    case  NOTPAT
    case  NOTAVAIL
    case  DISCONT
    case  TOOEARLY

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_PharmacySupplyRequestRenewalRefusalReasonCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_PharmacySupplyRequestRenewalRefusalReasonCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_PharmacySupplyRequestRenewalRefusalReasonCode(rawValue: i) 
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
            case  .FAMPHYS: return "FAMPHYS"
            case  .ONHOLD: return "ONHOLD"
            case  .MODIFY: return "MODIFY"
            case  .ALREADYRX: return "ALREADYRX"
            case  .NEEDAPMT: return "NEEDAPMT"
            case  .NOTPAT: return "NOTPAT"
            case  .NOTAVAIL: return "NOTAVAIL"
            case  .DISCONT: return "DISCONT"
            case  .TOOEARLY: return "TOOEARLY"
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


        
