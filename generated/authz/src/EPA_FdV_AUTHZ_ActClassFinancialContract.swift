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
* specDomain: S14003 (C-0-T11527-S13856-S14002-S14003-cpt)
*/

public enum EPA_FdV_AUTHZ_ActClassFinancialContract:Int,CustomStringConvertible
{
    case  FCNTRCT
    case  COV

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActClassFinancialContract?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActClassFinancialContract?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActClassFinancialContract(rawValue: i) 
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
            case  .FCNTRCT: return "FCNTRCT"
            case  .COV: return "COV"
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


        