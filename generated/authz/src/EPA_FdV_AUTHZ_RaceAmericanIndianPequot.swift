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
* specDomain: S15250 (C-0-T14914-S14915-S14916-S15250-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianPequot:Int,CustomStringConvertible
{
    case  _1453_x002D_0
    case  _1454_x002D_8

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianPequot?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianPequot?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianPequot(rawValue: i) 
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
            case  ._1453_x002D_0: return "1453-0"
            case  ._1454_x002D_8: return "1454-8"
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


        
