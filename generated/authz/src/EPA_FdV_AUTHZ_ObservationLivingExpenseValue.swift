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
* specDomain: S22321 (C-0-T16614-A19918-A19924-S22321-cpt)
*/

public enum EPA_FdV_AUTHZ_ObservationLivingExpenseValue:Int,CustomStringConvertible
{
    case  LIVEXP
    case  CLOTH
    case  FOOD
    case  HEALTH
    case  HOUSE
    case  LEGAL
    case  MORTG
    case  RENT
    case  SUNDRY
    case  TRANS
    case  UTIL

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ObservationLivingExpenseValue?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ObservationLivingExpenseValue?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ObservationLivingExpenseValue(rawValue: i) 
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
            case  .LIVEXP: return "LIVEXP"
            case  .CLOTH: return "CLOTH"
            case  .FOOD: return "FOOD"
            case  .HEALTH: return "HEALTH"
            case  .HOUSE: return "HOUSE"
            case  .LEGAL: return "LEGAL"
            case  .MORTG: return "MORTG"
            case  .RENT: return "RENT"
            case  .SUNDRY: return "SUNDRY"
            case  .TRANS: return "TRANS"
            case  .UTIL: return "UTIL"
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


        