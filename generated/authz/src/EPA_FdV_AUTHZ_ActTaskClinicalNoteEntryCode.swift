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
* specDomain: S22068 (C-0-T13953-A19846-S22067-S22068-cpt)
*/

public enum EPA_FdV_AUTHZ_ActTaskClinicalNoteEntryCode:Int,CustomStringConvertible
{
    case  CLINNOTEE
    case  DIAGLISTE
    case  DISCHSUME
    case  PATREPE
    case  PROBLISTE
    case  RADREPE

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActTaskClinicalNoteEntryCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActTaskClinicalNoteEntryCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActTaskClinicalNoteEntryCode(rawValue: i) 
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
            case  .CLINNOTEE: return "CLINNOTEE"
            case  .DIAGLISTE: return "DIAGLISTE"
            case  .DISCHSUME: return "DISCHSUME"
            case  .PATREPE: return "PATREPE"
            case  .PROBLISTE: return "PROBLISTE"
            case  .RADREPE: return "RADREPE"
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


        
