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
* abstDomain: A19644 (C-0-T10196-A19644-cpt)
*/

public enum EPA_FdV_AUTHZ_x_ClinicalStatementObservationMood:Int,CustomStringConvertible
{
    case  GOL
    case  APT
    case  ARQ
    case  DEF
    case  EVN
    case  INT
    case  PRMS
    case  PRP
    case  RQO

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_ClinicalStatementObservationMood?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_ClinicalStatementObservationMood?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_ClinicalStatementObservationMood(rawValue: i) 
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
            case  .GOL: return "GOL"
            case  .APT: return "APT"
            case  .ARQ: return "ARQ"
            case  .DEF: return "DEF"
            case  .EVN: return "EVN"
            case  .INT: return "INT"
            case  .PRMS: return "PRMS"
            case  .PRP: return "PRP"
            case  .RQO: return "RQO"
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


        
