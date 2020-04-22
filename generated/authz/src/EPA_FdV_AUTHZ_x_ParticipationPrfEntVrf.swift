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
* abstDomain: A19589 (C-0-T10901-A19589-cpt)
*/

public enum EPA_FdV_AUTHZ_x_ParticipationPrfEntVrf:Int,CustomStringConvertible
{
    case  ENT
    case  PRF
    case  VRF

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_ParticipationPrfEntVrf?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_ParticipationPrfEntVrf?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_ParticipationPrfEntVrf(rawValue: i) 
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
            case  .ENT: return "ENT"
            case  .PRF: return "PRF"
            case  .VRF: return "VRF"
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


        
