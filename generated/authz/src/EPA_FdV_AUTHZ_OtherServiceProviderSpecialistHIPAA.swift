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
* abstDomain: A13347 (C-0-T13129-A13130-A13136-A13347-cpt)
*/

public enum EPA_FdV_AUTHZ_OtherServiceProviderSpecialistHIPAA:Int,CustomStringConvertible
{
    case  _1744G0900N
    case  _1744P3200N
    case  _1744R1103N
    case  _1744R1102N

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_OtherServiceProviderSpecialistHIPAA?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_OtherServiceProviderSpecialistHIPAA?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_OtherServiceProviderSpecialistHIPAA(rawValue: i) 
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
            case  ._1744G0900N: return "1744G0900N"
            case  ._1744P3200N: return "1744P3200N"
            case  ._1744R1103N: return "1744R1103N"
            case  ._1744R1102N: return "1744R1102N"
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


        
