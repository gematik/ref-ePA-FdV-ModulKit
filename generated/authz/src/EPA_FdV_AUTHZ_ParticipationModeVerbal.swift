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
* specDomain: S16544 (C-0-T16543-S16544-cpt)
*/

public enum EPA_FdV_AUTHZ_ParticipationModeVerbal:Int,CustomStringConvertible
{
    case  VERBAL
    case  DICTATE
    case  FACE
    case  PHONE
    case  VIDEOCONF

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ParticipationModeVerbal?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ParticipationModeVerbal?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ParticipationModeVerbal(rawValue: i) 
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
            case  .VERBAL: return "VERBAL"
            case  .DICTATE: return "DICTATE"
            case  .FACE: return "FACE"
            case  .PHONE: return "PHONE"
            case  .VIDEOCONF: return "VIDEOCONF"
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


        
