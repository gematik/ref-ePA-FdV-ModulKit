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
* specDomain: S15093 (C-0-T14914-S14915-S14916-S15093-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianEasternTribes:Int,CustomStringConvertible
{
    case  _1233_x002D_6
    case  _1234_x002D_4
    case  _1235_x002D_1
    case  _1236_x002D_9
    case  _1237_x002D_7
    case  _1238_x002D_5
    case  _1239_x002D_3
    case  _1240_x002D_1
    case  _1241_x002D_9
    case  _1242_x002D_7
    case  _1243_x002D_5
    case  _1244_x002D_3
    case  _1245_x002D_0
    case  _1246_x002D_8
    case  _1247_x002D_6
    case  _1248_x002D_4

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianEasternTribes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianEasternTribes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianEasternTribes(rawValue: i) 
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
            case  ._1233_x002D_6: return "1233-6"
            case  ._1234_x002D_4: return "1234-4"
            case  ._1235_x002D_1: return "1235-1"
            case  ._1236_x002D_9: return "1236-9"
            case  ._1237_x002D_7: return "1237-7"
            case  ._1238_x002D_5: return "1238-5"
            case  ._1239_x002D_3: return "1239-3"
            case  ._1240_x002D_1: return "1240-1"
            case  ._1241_x002D_9: return "1241-9"
            case  ._1242_x002D_7: return "1242-7"
            case  ._1243_x002D_5: return "1243-5"
            case  ._1244_x002D_3: return "1244-3"
            case  ._1245_x002D_0: return "1245-0"
            case  ._1246_x002D_8: return "1246-8"
            case  ._1247_x002D_6: return "1247-6"
            case  ._1248_x002D_4: return "1248-4"
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


        
