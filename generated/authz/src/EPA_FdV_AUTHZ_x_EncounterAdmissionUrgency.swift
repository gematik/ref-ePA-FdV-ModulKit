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
* abstDomain: A19457 (C-0-T16866-A19457-cpt)
*/

public enum EPA_FdV_AUTHZ_x_EncounterAdmissionUrgency:Int,CustomStringConvertible
{
    case  EL
    case  EM
    case  R
    case  UR

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_EncounterAdmissionUrgency?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_EncounterAdmissionUrgency?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_EncounterAdmissionUrgency(rawValue: i) 
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
            case  .EL: return "EL"
            case  .EM: return "EM"
            case  .R: return "R"
            case  .UR: return "UR"
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


        
