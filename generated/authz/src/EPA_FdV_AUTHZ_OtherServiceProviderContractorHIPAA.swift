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
* abstDomain: A13139 (C-0-T13129-A13130-A13136-A13139-cpt)
*/

public enum EPA_FdV_AUTHZ_OtherServiceProviderContractorHIPAA:Int,CustomStringConvertible
{
    case  _171WH0202N

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_OtherServiceProviderContractorHIPAA?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_OtherServiceProviderContractorHIPAA?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_OtherServiceProviderContractorHIPAA(rawValue: i) 
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
            case  ._171WH0202N: return "171WH0202N"
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


        