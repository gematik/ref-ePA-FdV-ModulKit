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
* specDomain: S16466 (C-0-T14914-S14915-S15470-S15690-S16466-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAlaskanNativeAleutBristolBay:Int,CustomStringConvertible
{
    case  _1972_x002D_9
    case  _1973_x002D_7
    case  _1974_x002D_5
    case  _1975_x002D_2
    case  _1976_x002D_0
    case  _1977_x002D_8
    case  _1978_x002D_6
    case  _1979_x002D_4
    case  _1980_x002D_2
    case  _1981_x002D_0
    case  _1982_x002D_8

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAlaskanNativeAleutBristolBay?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAlaskanNativeAleutBristolBay?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAlaskanNativeAleutBristolBay(rawValue: i) 
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
            case  ._1972_x002D_9: return "1972-9"
            case  ._1973_x002D_7: return "1973-7"
            case  ._1974_x002D_5: return "1974-5"
            case  ._1975_x002D_2: return "1975-2"
            case  ._1976_x002D_0: return "1976-0"
            case  ._1977_x002D_8: return "1977-8"
            case  ._1978_x002D_6: return "1978-6"
            case  ._1979_x002D_4: return "1979-4"
            case  ._1980_x002D_2: return "1980-2"
            case  ._1981_x002D_0: return "1981-0"
            case  ._1982_x002D_8: return "1982-8"
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


        
