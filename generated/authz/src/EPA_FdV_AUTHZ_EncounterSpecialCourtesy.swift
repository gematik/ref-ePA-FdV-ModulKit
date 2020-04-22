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
* vocSet: T12242 (C-0-T12242-cpt)
*/

public enum EPA_FdV_AUTHZ_EncounterSpecialCourtesy:Int,CustomStringConvertible
{
    case  EXT
    case  NRM
    case  PRF
    case  STF
    case  VIP

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_EncounterSpecialCourtesy?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_EncounterSpecialCourtesy?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_EncounterSpecialCourtesy(rawValue: i) 
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
            case  .EXT: return "EXT"
            case  .NRM: return "NRM"
            case  .PRF: return "PRF"
            case  .STF: return "STF"
            case  .VIP: return "VIP"
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


        
