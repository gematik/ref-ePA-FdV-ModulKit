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
* abstDomain: A19718 (C-0-T14878-A19718-cpt)
*/

public enum EPA_FdV_AUTHZ_ActSupplyFulfillmentRefusalReason:Int,CustomStringConvertible
{
    case  FRR05
    case  FRR03
    case  FRR01
    case  FRR04
    case  FRR02
    case  FRR06

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActSupplyFulfillmentRefusalReason?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActSupplyFulfillmentRefusalReason?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActSupplyFulfillmentRefusalReason(rawValue: i) 
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
            case  .FRR05: return "FRR05"
            case  .FRR03: return "FRR03"
            case  .FRR01: return "FRR01"
            case  .FRR04: return "FRR04"
            case  .FRR02: return "FRR02"
            case  .FRR06: return "FRR06"
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


        
