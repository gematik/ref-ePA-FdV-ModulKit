//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------


import Foundation


public enum EPA_FdV_AUTHN_ParticipantObjectIdentificationType_ParticipantObjectTypeCode:Int,CustomStringConvertible
{
    case  _1
    case  _2
    case  _3
    case  _4

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHN_ParticipantObjectIdentificationType_ParticipantObjectTypeCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHN_ParticipantObjectIdentificationType_ParticipantObjectTypeCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHN_ParticipantObjectIdentificationType_ParticipantObjectTypeCode(rawValue: i) 
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
            case  ._1: return "1"
            case  ._2: return "2"
            case  ._3: return "3"
            case  ._4: return "4"
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


        
