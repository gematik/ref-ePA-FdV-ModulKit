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
* specDomain: S21646 (C-0-T11527-S13856-S11529-S21646-cpt)
*/

public enum EPA_FdV_AUTHZ_ActClassPosition:Int,CustomStringConvertible
{
    case  POS
    case  POSACC
    case  POSCOORD

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActClassPosition?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActClassPosition?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActClassPosition(rawValue: i) 
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
            case  .POS: return "POS"
            case  .POSACC: return "POSACC"
            case  .POSCOORD: return "POSCOORD"
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


        
