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
* specDomain: S15414 (C-0-T14914-S14915-S14916-S15414-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianTohonoOOdham:Int,CustomStringConvertible
{
    case  _1653_x002D_5
    case  _1654_x002D_3
    case  _1655_x002D_0
    case  _1656_x002D_8
    case  _1657_x002D_6

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianTohonoOOdham?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianTohonoOOdham?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianTohonoOOdham(rawValue: i) 
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
            case  ._1653_x002D_5: return "1653-5"
            case  ._1654_x002D_3: return "1654-3"
            case  ._1655_x002D_0: return "1655-0"
            case  ._1656_x002D_8: return "1656-8"
            case  ._1657_x002D_6: return "1657-6"
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


        
