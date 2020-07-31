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
* specDomain: S21321 (C-0-T15913-A200-S21321-cpt)
*/

public enum EPA_FdV_AUTHZ_PersonNameUsePseudonym:Int,CustomStringConvertible
{
    case  P
    case  A

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_PersonNameUsePseudonym?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_PersonNameUsePseudonym?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_PersonNameUsePseudonym(rawValue: i) 
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
            case  .P: return "P"
            case  .A: return "A"
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


        