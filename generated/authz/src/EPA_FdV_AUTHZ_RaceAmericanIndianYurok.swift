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
* specDomain: S15468 (C-0-T14914-S14915-S14916-S15468-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianYurok:Int,CustomStringConvertible
{
    case  _1732_x002D_7
    case  _1733_x002D_5

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianYurok?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianYurok?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianYurok(rawValue: i) 
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
            case  ._1732_x002D_7: return "1732-7"
            case  ._1733_x002D_5: return "1733-5"
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


        
