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
* vocSet: T16031 (C-0-T16031-cpt)
*/

public enum EPA_FdV_AUTHZ_CommunicationFunctionType:Int,CustomStringConvertible
{
    case  RCV
    case  RSP
    case  SND

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_CommunicationFunctionType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_CommunicationFunctionType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_CommunicationFunctionType(rawValue: i) 
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
            case  .RCV: return "RCV"
            case  .RSP: return "RSP"
            case  .SND: return "SND"
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


        
