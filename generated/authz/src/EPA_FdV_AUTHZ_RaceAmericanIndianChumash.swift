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
* specDomain: S15042 (C-0-T14914-S14915-S14916-S15042-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianChumash:Int,CustomStringConvertible
{
    case  _1162_x002D_7
    case  _1163_x002D_5

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianChumash?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianChumash?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianChumash(rawValue: i) 
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
            case  ._1162_x002D_7: return "1162-7"
            case  ._1163_x002D_5: return "1163-5"
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


        
