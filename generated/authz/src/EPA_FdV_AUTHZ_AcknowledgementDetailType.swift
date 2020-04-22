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
* vocSet: T19358 (C-0-T19358-cpt)
*/

public enum EPA_FdV_AUTHZ_AcknowledgementDetailType:Int,CustomStringConvertible
{
    case  E
    case  I
    case  W

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_AcknowledgementDetailType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_AcknowledgementDetailType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_AcknowledgementDetailType(rawValue: i) 
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
            case  .I: return "I"
            case  .W: return "W"
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


        
