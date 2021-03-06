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
* abstDomain: A19640 (C-0-T19638-A19640-cpt)
*/

public enum EPA_FdV_AUTHZ_AcknowledgementDetailNotSupportedCode:Int,CustomStringConvertible
{
    case  NS260
    case  NS261
    case  NS200
    case  NS250
    case  NS202
    case  NS203

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_AcknowledgementDetailNotSupportedCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_AcknowledgementDetailNotSupportedCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_AcknowledgementDetailNotSupportedCode(rawValue: i) 
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
            case  .NS260: return "NS260"
            case  .NS261: return "NS261"
            case  .NS200: return "NS200"
            case  .NS250: return "NS250"
            case  .NS202: return "NS202"
            case  .NS203: return "NS203"
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


        
