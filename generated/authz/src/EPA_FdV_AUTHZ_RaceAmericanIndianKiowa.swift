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
* specDomain: S15147 (C-0-T14914-S14915-S14916-S15147-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianKiowa:Int,CustomStringConvertible
{
    case  _1309_x002D_4
    case  _1310_x002D_2

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianKiowa?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianKiowa?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianKiowa(rawValue: i) 
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
            case  ._1309_x002D_4: return "1309-4"
            case  ._1310_x002D_2: return "1310-2"
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


        