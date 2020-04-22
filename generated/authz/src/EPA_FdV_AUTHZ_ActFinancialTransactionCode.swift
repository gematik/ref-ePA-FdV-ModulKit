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
* abstDomain: A14804 (C-0-T13953-A13954-A14804-cpt)
*/

public enum EPA_FdV_AUTHZ_ActFinancialTransactionCode:Int,CustomStringConvertible
{
    case  CHRG
    case  REV

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActFinancialTransactionCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActFinancialTransactionCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActFinancialTransactionCode(rawValue: i) 
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
            case  .CHRG: return "CHRG"
            case  .REV: return "REV"
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


        
