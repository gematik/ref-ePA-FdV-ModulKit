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
* abstDomain: A19822 (C-0-T11527-A19822-cpt)
*/

public enum EPA_FdV_AUTHZ_x_ActOrderableOrBillable:Int,CustomStringConvertible
{
    case  ACCM
    case  PCPR
    case  ENC
    case  SBADM
    case  TRNS

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_ActOrderableOrBillable?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_ActOrderableOrBillable?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_ActOrderableOrBillable(rawValue: i) 
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
            case  .ACCM: return "ACCM"
            case  .PCPR: return "PCPR"
            case  .ENC: return "ENC"
            case  .SBADM: return "SBADM"
            case  .TRNS: return "TRNS"
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


        
