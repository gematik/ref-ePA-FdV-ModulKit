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
* abstDomain: A14879 (C-0-T14878-A14879-cpt)
*/

public enum EPA_FdV_AUTHZ_SchedulingActReason:Int,CustomStringConvertible
{
    case  MTG
    case  MED
    case  FIN
    case  DEC
    case  PAT
    case  PHY
    case  BLK

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SchedulingActReason?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SchedulingActReason?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SchedulingActReason(rawValue: i) 
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
            case  .MTG: return "MTG"
            case  .MED: return "MED"
            case  .FIN: return "FIN"
            case  .DEC: return "DEC"
            case  .PAT: return "PAT"
            case  .PHY: return "PHY"
            case  .BLK: return "BLK"
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


        
