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
* specDomain: S15219 (C-0-T14914-S14915-S14916-S15219-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianPaiute:Int,CustomStringConvertible
{
    case  _1416_x002D_7
    case  _1417_x002D_5
    case  _1418_x002D_3
    case  _1419_x002D_1
    case  _1420_x002D_9
    case  _1421_x002D_7
    case  _1422_x002D_5
    case  _1423_x002D_3
    case  _1424_x002D_1
    case  _1425_x002D_8
    case  _1426_x002D_6
    case  _1427_x002D_4
    case  _1428_x002D_2
    case  _1429_x002D_0
    case  _1430_x002D_8
    case  _1431_x002D_6
    case  _1432_x002D_4
    case  _1433_x002D_2
    case  _1434_x002D_0
    case  _1435_x002D_7
    case  _1436_x002D_5
    case  _1437_x002D_3

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianPaiute?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianPaiute?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianPaiute(rawValue: i) 
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
            case  ._1416_x002D_7: return "1416-7"
            case  ._1417_x002D_5: return "1417-5"
            case  ._1418_x002D_3: return "1418-3"
            case  ._1419_x002D_1: return "1419-1"
            case  ._1420_x002D_9: return "1420-9"
            case  ._1421_x002D_7: return "1421-7"
            case  ._1422_x002D_5: return "1422-5"
            case  ._1423_x002D_3: return "1423-3"
            case  ._1424_x002D_1: return "1424-1"
            case  ._1425_x002D_8: return "1425-8"
            case  ._1426_x002D_6: return "1426-6"
            case  ._1427_x002D_4: return "1427-4"
            case  ._1428_x002D_2: return "1428-2"
            case  ._1429_x002D_0: return "1429-0"
            case  ._1430_x002D_8: return "1430-8"
            case  ._1431_x002D_6: return "1431-6"
            case  ._1432_x002D_4: return "1432-4"
            case  ._1433_x002D_2: return "1433-2"
            case  ._1434_x002D_0: return "1434-0"
            case  ._1435_x002D_7: return "1435-7"
            case  ._1436_x002D_5: return "1436-5"
            case  ._1437_x002D_3: return "1437-3"
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


        