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
* specDomain: S15144 (C-0-T14914-S14915-S14916-S15144-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianKickapoo:Int,CustomStringConvertible
{
    case  _1305_x002D_2
    case  _1306_x002D_0
    case  _1307_x002D_8

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianKickapoo?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianKickapoo?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianKickapoo(rawValue: i) 
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
            case  ._1305_x002D_2: return "1305-2"
            case  ._1306_x002D_0: return "1306-0"
            case  ._1307_x002D_8: return "1307-8"
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


        
