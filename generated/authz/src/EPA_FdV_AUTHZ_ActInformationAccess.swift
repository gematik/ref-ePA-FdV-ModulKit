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
* specDomain: S22200 (C-0-T13953-A19897-S22200-cpt)
*/

public enum EPA_FdV_AUTHZ_ActInformationAccess:Int,CustomStringConvertible
{
    case  INFA
    case  INFASO
    case  INFAO

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActInformationAccess?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActInformationAccess?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActInformationAccess(rawValue: i) 
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
            case  .INFA: return "INFA"
            case  .INFASO: return "INFASO"
            case  .INFAO: return "INFAO"
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


        