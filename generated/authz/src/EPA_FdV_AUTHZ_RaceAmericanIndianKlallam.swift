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
* specDomain: S15149 (C-0-T14914-S14915-S14916-S15149-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianKlallam:Int,CustomStringConvertible
{
    case  _1312_x002D_8
    case  _1313_x002D_6
    case  _1314_x002D_4
    case  _1315_x002D_1

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianKlallam?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianKlallam?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianKlallam(rawValue: i) 
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
            case  ._1312_x002D_8: return "1312-8"
            case  ._1313_x002D_6: return "1313-6"
            case  ._1314_x002D_4: return "1314-4"
            case  ._1315_x002D_1: return "1315-1"
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


        