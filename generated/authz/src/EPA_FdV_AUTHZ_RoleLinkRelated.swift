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
* specDomain: S21429 (C-0-T11603-S21429-cpt)
*/

public enum EPA_FdV_AUTHZ_RoleLinkRelated:Int,CustomStringConvertible
{
    case  REL
    case  IDENT
    case  DIRAUTH
    case  INDAUTH
    case  PART
    case  BACKUP
    case  REPL

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RoleLinkRelated?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RoleLinkRelated?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RoleLinkRelated(rawValue: i) 
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
            case  .REL: return "REL"
            case  .IDENT: return "IDENT"
            case  .DIRAUTH: return "DIRAUTH"
            case  .INDAUTH: return "INDAUTH"
            case  .PART: return "PART"
            case  .BACKUP: return "BACKUP"
            case  .REPL: return "REPL"
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


        
