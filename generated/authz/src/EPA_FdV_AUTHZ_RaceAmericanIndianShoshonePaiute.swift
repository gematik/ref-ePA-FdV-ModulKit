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
* specDomain: S15371 (C-0-T14914-S14915-S14916-S15371-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianShoshonePaiute:Int,CustomStringConvertible
{
    case  _1602_x002D_2
    case  _1603_x002D_0
    case  _1604_x002D_8
    case  _1605_x002D_5

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianShoshonePaiute?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianShoshonePaiute?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianShoshonePaiute(rawValue: i) 
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
            case  ._1602_x002D_2: return "1602-2"
            case  ._1603_x002D_0: return "1603-0"
            case  ._1604_x002D_8: return "1604-8"
            case  ._1605_x002D_5: return "1605-5"
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


        
