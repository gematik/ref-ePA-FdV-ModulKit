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
* vocSet: T11002 (C-0-T11002-cpt)
*/

public enum EPA_FdV_AUTHZ_TableRules:Int,CustomStringConvertible
{
    case  all
    case  cols
    case  groups
    case  none
    case  rows

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_TableRules?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_TableRules?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_TableRules(rawValue: i) 
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
            case  .all: return "all"
            case  .cols: return "cols"
            case  .groups: return "groups"
            case  .none: return "none"
            case  .rows: return "rows"
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


        
