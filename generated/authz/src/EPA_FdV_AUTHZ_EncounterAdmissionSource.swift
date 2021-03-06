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
* vocSet: T12234 (C-0-T12234-cpt)
*/

public enum EPA_FdV_AUTHZ_EncounterAdmissionSource:Int,CustomStringConvertible
{
    case  E
    case  LD
    case  NB

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_EncounterAdmissionSource?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_EncounterAdmissionSource?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_EncounterAdmissionSource(rawValue: i) 
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
            case  .E: return "E"
            case  .LD: return "LD"
            case  .NB: return "NB"
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


        
