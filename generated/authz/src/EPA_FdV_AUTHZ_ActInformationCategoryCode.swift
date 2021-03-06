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
* abstDomain: A19752 (C-0-T13953-A19752-cpt)
*/

public enum EPA_FdV_AUTHZ_ActInformationCategoryCode:Int,CustomStringConvertible
{
    case  ALLGCAT
    case  COBSCAT
    case  DEMOCAT
    case  DICAT
    case  IMMUCAT
    case  LABCAT
    case  MEDCCAT
    case  RXCAT
    case  PSVCCAT

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActInformationCategoryCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActInformationCategoryCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActInformationCategoryCode(rawValue: i) 
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
            case  .ALLGCAT: return "ALLGCAT"
            case  .COBSCAT: return "COBSCAT"
            case  .DEMOCAT: return "DEMOCAT"
            case  .DICAT: return "DICAT"
            case  .IMMUCAT: return "IMMUCAT"
            case  .LABCAT: return "LABCAT"
            case  .MEDCCAT: return "MEDCCAT"
            case  .RXCAT: return "RXCAT"
            case  .PSVCCAT: return "PSVCCAT"
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


        
