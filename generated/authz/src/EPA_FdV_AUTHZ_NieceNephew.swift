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
* specDomain: S19750 (C-0-T12206-A19563-S17926-S19750-cpt)
*/

public enum EPA_FdV_AUTHZ_NieceNephew:Int,CustomStringConvertible
{
    case  NIENEPH
    case  NEPHEW
    case  NIECE

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_NieceNephew?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_NieceNephew?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_NieceNephew(rawValue: i) 
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
            case  .NIENEPH: return "NIENEPH"
            case  .NEPHEW: return "NEPHEW"
            case  .NIECE: return "NIECE"
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


        