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
* specDomain: S15722 (C-0-T14914-S14915-S15470-S15690-S15722-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAlaskanNativeAleutUnangan:Int,CustomStringConvertible
{
    case  _2006_x002D_5
    case  _2007_x002D_3
    case  _2008_x002D_1
    case  _2009_x002D_9
    case  _2010_x002D_7
    case  _2011_x002D_5
    case  _2012_x002D_3
    case  _2013_x002D_1
    case  _2015_x002D_6
    case  _2014_x002D_9
    case  _2016_x002D_4
    case  _2017_x002D_2
    case  _2018_x002D_0
    case  _2019_x002D_8
    case  _2020_x002D_6
    case  _2023_x002D_0
    case  _2024_x002D_8
    case  _2021_x002D_4
    case  _2022_x002D_2
    case  _2025_x002D_5
    case  _2026_x002D_3

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAlaskanNativeAleutUnangan?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAlaskanNativeAleutUnangan?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAlaskanNativeAleutUnangan(rawValue: i) 
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
            case  ._2006_x002D_5: return "2006-5"
            case  ._2007_x002D_3: return "2007-3"
            case  ._2008_x002D_1: return "2008-1"
            case  ._2009_x002D_9: return "2009-9"
            case  ._2010_x002D_7: return "2010-7"
            case  ._2011_x002D_5: return "2011-5"
            case  ._2012_x002D_3: return "2012-3"
            case  ._2013_x002D_1: return "2013-1"
            case  ._2015_x002D_6: return "2015-6"
            case  ._2014_x002D_9: return "2014-9"
            case  ._2016_x002D_4: return "2016-4"
            case  ._2017_x002D_2: return "2017-2"
            case  ._2018_x002D_0: return "2018-0"
            case  ._2019_x002D_8: return "2019-8"
            case  ._2020_x002D_6: return "2020-6"
            case  ._2023_x002D_0: return "2023-0"
            case  ._2024_x002D_8: return "2024-8"
            case  ._2021_x002D_4: return "2021-4"
            case  ._2022_x002D_2: return "2022-2"
            case  ._2025_x002D_5: return "2025-5"
            case  ._2026_x002D_3: return "2026-3"
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


        