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
* abstDomain: A19446 (C-0-T10317-A19446-cpt)
*/

public enum EPA_FdV_AUTHZ_x_ActRelationshipEntry:Int,CustomStringConvertible
{
    case  COMP
    case  DRIV

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_ActRelationshipEntry?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_ActRelationshipEntry?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_ActRelationshipEntry(rawValue: i) 
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
            case  .COMP: return "COMP"
            case  .DRIV: return "DRIV"
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


        