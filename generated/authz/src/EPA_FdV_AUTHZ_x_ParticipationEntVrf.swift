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
* abstDomain: A19588 (C-0-T10901-A19588-cpt)
*/

public enum EPA_FdV_AUTHZ_x_ParticipationEntVrf:Int,CustomStringConvertible
{
    case  ENT
    case  VRF

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_ParticipationEntVrf?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_ParticipationEntVrf?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_ParticipationEntVrf(rawValue: i) 
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


        
