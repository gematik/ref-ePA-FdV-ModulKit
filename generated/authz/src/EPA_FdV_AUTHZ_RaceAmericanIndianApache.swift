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
* specDomain: S14919 (C-0-T14914-S14915-S14916-S14919-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianApache:Int,CustomStringConvertible
{
    case  _1010_x002D_8
    case  _1011_x002D_6
    case  _1012_x002D_4
    case  _1013_x002D_2
    case  _1014_x002D_0
    case  _1015_x002D_7
    case  _1016_x002D_5
    case  _1017_x002D_3
    case  _1018_x002D_1
    case  _1019_x002D_9

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianApache?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianApache?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianApache(rawValue: i) 
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
            case  ._1010_x002D_8: return "1010-8"
            case  ._1011_x002D_6: return "1011-6"
            case  ._1012_x002D_4: return "1012-4"
            case  ._1013_x002D_2: return "1013-2"
            case  ._1014_x002D_0: return "1014-0"
            case  ._1015_x002D_7: return "1015-7"
            case  ._1016_x002D_5: return "1016-5"
            case  ._1017_x002D_3: return "1017-3"
            case  ._1018_x002D_1: return "1018-1"
            case  ._1019_x002D_9: return "1019-9"
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


        
