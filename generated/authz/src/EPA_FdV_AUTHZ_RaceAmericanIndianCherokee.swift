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
* specDomain: S14979 (C-0-T14914-S14915-S14916-S14979-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianCherokee:Int,CustomStringConvertible
{
    case  _1088_x002D_4
    case  _1089_x002D_2
    case  _1090_x002D_0
    case  _1091_x002D_8
    case  _1092_x002D_6
    case  _1093_x002D_4
    case  _1094_x002D_2
    case  _1095_x002D_9
    case  _1096_x002D_7
    case  _1097_x002D_5
    case  _1098_x002D_3

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianCherokee?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianCherokee?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianCherokee(rawValue: i) 
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
            case  ._1088_x002D_4: return "1088-4"
            case  ._1089_x002D_2: return "1089-2"
            case  ._1090_x002D_0: return "1090-0"
            case  ._1091_x002D_8: return "1091-8"
            case  ._1092_x002D_6: return "1092-6"
            case  ._1093_x002D_4: return "1093-4"
            case  ._1094_x002D_2: return "1094-2"
            case  ._1095_x002D_9: return "1095-9"
            case  ._1096_x002D_7: return "1096-7"
            case  ._1097_x002D_5: return "1097-5"
            case  ._1098_x002D_3: return "1098-3"
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


        
