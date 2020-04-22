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
* abstDomain: A19663 (C-0-T13953-A19656-A19663-cpt)
*/

public enum EPA_FdV_AUTHZ_ActSpecimenTransportCode:Int,CustomStringConvertible
{
    case  SSTOR
    case  STRAN
    case  SREC

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActSpecimenTransportCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActSpecimenTransportCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActSpecimenTransportCode(rawValue: i) 
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
            case  .SSTOR: return "SSTOR"
            case  .STRAN: return "STRAN"
            case  .SREC: return "SREC"
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


        
