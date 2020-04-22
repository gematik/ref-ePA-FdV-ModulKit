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
* vocSet: T10360 (C-0-T10360-cpt)
*/

public enum EPA_FdV_AUTHZ_ActRelationshipJoin:Int,CustomStringConvertible
{
    case  D
    case  X
    case  K
    case  W

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActRelationshipJoin?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActRelationshipJoin?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActRelationshipJoin(rawValue: i) 
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
            case  .D: return "D"
            case  .X: return "X"
            case  .K: return "K"
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


        
