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
* specDomain: S15129 (C-0-T14914-S14915-S14916-S15129-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianIroquois:Int,CustomStringConvertible
{
    case  _1285_x002D_6
    case  _1286_x002D_4
    case  _1287_x002D_2
    case  _1288_x002D_0
    case  _1289_x002D_8
    case  _1290_x002D_6
    case  _1291_x002D_4
    case  _1292_x002D_2
    case  _1293_x002D_0
    case  _1294_x002D_8
    case  _1295_x002D_5

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianIroquois?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianIroquois?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianIroquois(rawValue: i) 
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
            case  ._1285_x002D_6: return "1285-6"
            case  ._1286_x002D_4: return "1286-4"
            case  ._1287_x002D_2: return "1287-2"
            case  ._1288_x002D_0: return "1288-0"
            case  ._1289_x002D_8: return "1289-8"
            case  ._1290_x002D_6: return "1290-6"
            case  ._1291_x002D_4: return "1291-4"
            case  ._1292_x002D_2: return "1292-2"
            case  ._1293_x002D_0: return "1293-0"
            case  ._1294_x002D_8: return "1294-8"
            case  ._1295_x002D_5: return "1295-5"
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


        
