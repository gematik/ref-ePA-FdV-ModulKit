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
* abstDomain: A18143 (C-0-T18130-A18131-A18132-A18142-A18143-cpt)
*/

public enum EPA_FdV_AUTHZ_ArapahoGrosVentre:Int,CustomStringConvertible
{
    case  x_x002D_ARP
    case  x_x002D_ATS

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ArapahoGrosVentre?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ArapahoGrosVentre?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ArapahoGrosVentre(rawValue: i) 
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
            case  .x_x002D_ARP: return "x-ARP"
            case  .x_x002D_ATS: return "x-ATS"
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


        