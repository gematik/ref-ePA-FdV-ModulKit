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
* specDomain: S15257 (C-0-T14914-S14915-S14916-S15257-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianPomo:Int,CustomStringConvertible
{
    case  _1464_x002D_7
    case  _1465_x002D_4
    case  _1466_x002D_2
    case  _1467_x002D_0
    case  _1468_x002D_8
    case  _1469_x002D_6
    case  _1470_x002D_4
    case  _1471_x002D_2
    case  _1472_x002D_0

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianPomo?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianPomo?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianPomo(rawValue: i) 
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
            case  ._1464_x002D_7: return "1464-7"
            case  ._1465_x002D_4: return "1465-4"
            case  ._1466_x002D_2: return "1466-2"
            case  ._1467_x002D_0: return "1467-0"
            case  ._1468_x002D_8: return "1468-8"
            case  ._1469_x002D_6: return "1469-6"
            case  ._1470_x002D_4: return "1470-4"
            case  ._1471_x002D_2: return "1471-2"
            case  ._1472_x002D_0: return "1472-0"
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


        
