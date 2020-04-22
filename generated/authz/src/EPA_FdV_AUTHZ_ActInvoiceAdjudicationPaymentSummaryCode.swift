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
* abstDomain: A19413 (C-0-T13953-A13954-A19397-A19412-A19413-cpt)
*/

public enum EPA_FdV_AUTHZ_ActInvoiceAdjudicationPaymentSummaryCode:Int,CustomStringConvertible
{
    case  CONT
    case  DAY
    case  INVTYPE
    case  LOC
    case  MONTH
    case  PAYEE
    case  PAYOR
    case  PERIOD
    case  PROV
    case  SENDAPP
    case  WEEK
    case  YEAR

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActInvoiceAdjudicationPaymentSummaryCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActInvoiceAdjudicationPaymentSummaryCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActInvoiceAdjudicationPaymentSummaryCode(rawValue: i) 
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
            case  .CONT: return "CONT"
            case  .DAY: return "DAY"
            case  .INVTYPE: return "INVTYPE"
            case  .LOC: return "LOC"
            case  .MONTH: return "MONTH"
            case  .PAYEE: return "PAYEE"
            case  .PAYOR: return "PAYOR"
            case  .PERIOD: return "PERIOD"
            case  .PROV: return "PROV"
            case  .SENDAPP: return "SENDAPP"
            case  .WEEK: return "WEEK"
            case  .YEAR: return "YEAR"
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


        
