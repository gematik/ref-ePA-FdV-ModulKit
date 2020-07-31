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
* abstDomain: A19933 (C-0-T13953-A13954-A17496-A19933-cpt)
*/

public enum EPA_FdV_AUTHZ_ActCoverageQuantityLimitCode:Int,CustomStringConvertible
{
    case  NETAMT
    case  NETAMT_1
    case  UNITPRICE
    case  UNITPRICE_1
    case  UNITQTY
    case  UNITQTY_1
    case  COVPRD
    case  COVPRD_1
    case  LFEMX
    case  PRDMX

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActCoverageQuantityLimitCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActCoverageQuantityLimitCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActCoverageQuantityLimitCode(rawValue: i) 
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
            case  .NETAMT: return "NETAMT"
            case  .NETAMT_1: return "NETAMT"
            case  .UNITPRICE: return "UNITPRICE"
            case  .UNITPRICE_1: return "UNITPRICE"
            case  .UNITQTY: return "UNITQTY"
            case  .UNITQTY_1: return "UNITQTY"
            case  .COVPRD: return "COVPRD"
            case  .COVPRD_1: return "COVPRD"
            case  .LFEMX: return "LFEMX"
            case  .PRDMX: return "PRDMX"
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


        