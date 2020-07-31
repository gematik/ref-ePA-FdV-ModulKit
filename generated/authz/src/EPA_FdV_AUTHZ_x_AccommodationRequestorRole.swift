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
* abstDomain: A19352 (C-0-T11555-A19352-cpt)
*/

public enum EPA_FdV_AUTHZ_x_AccommodationRequestorRole:Int,CustomStringConvertible
{
    case  AGNT
    case  PROV
    case  PAT
    case  PRS

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_AccommodationRequestorRole?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_AccommodationRequestorRole?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_AccommodationRequestorRole(rawValue: i) 
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
            case  .AGNT: return "AGNT"
            case  .PROV: return "PROV"
            case  .PAT: return "PAT"
            case  .PRS: return "PRS"
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


        