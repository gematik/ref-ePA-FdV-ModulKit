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
* specDomain: S15278 (C-0-T14914-S14915-S14916-S15278-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianPueblo:Int,CustomStringConvertible
{
    case  _1489_x002D_4
    case  _1490_x002D_2
    case  _1491_x002D_0
    case  _1492_x002D_8
    case  _1493_x002D_6
    case  _1494_x002D_4
    case  _1495_x002D_1
    case  _1496_x002D_9
    case  _1497_x002D_7
    case  _1498_x002D_5
    case  _1499_x002D_3
    case  _1500_x002D_8
    case  _1501_x002D_6
    case  _1502_x002D_4
    case  _1503_x002D_2
    case  _1506_x002D_5
    case  _1505_x002D_7
    case  _1504_x002D_0
    case  _1507_x002D_3
    case  _1508_x002D_1
    case  _1509_x002D_9
    case  _1510_x002D_7
    case  _1511_x002D_5
    case  _1512_x002D_3
    case  _1513_x002D_1
    case  _1514_x002D_9
    case  _1515_x002D_6
    case  _1516_x002D_4

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianPueblo?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianPueblo?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianPueblo(rawValue: i) 
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
            case  ._1489_x002D_4: return "1489-4"
            case  ._1490_x002D_2: return "1490-2"
            case  ._1491_x002D_0: return "1491-0"
            case  ._1492_x002D_8: return "1492-8"
            case  ._1493_x002D_6: return "1493-6"
            case  ._1494_x002D_4: return "1494-4"
            case  ._1495_x002D_1: return "1495-1"
            case  ._1496_x002D_9: return "1496-9"
            case  ._1497_x002D_7: return "1497-7"
            case  ._1498_x002D_5: return "1498-5"
            case  ._1499_x002D_3: return "1499-3"
            case  ._1500_x002D_8: return "1500-8"
            case  ._1501_x002D_6: return "1501-6"
            case  ._1502_x002D_4: return "1502-4"
            case  ._1503_x002D_2: return "1503-2"
            case  ._1506_x002D_5: return "1506-5"
            case  ._1505_x002D_7: return "1505-7"
            case  ._1504_x002D_0: return "1504-0"
            case  ._1507_x002D_3: return "1507-3"
            case  ._1508_x002D_1: return "1508-1"
            case  ._1509_x002D_9: return "1509-9"
            case  ._1510_x002D_7: return "1510-7"
            case  ._1511_x002D_5: return "1511-5"
            case  ._1512_x002D_3: return "1512-3"
            case  ._1513_x002D_1: return "1513-1"
            case  ._1514_x002D_9: return "1514-9"
            case  ._1515_x002D_6: return "1515-6"
            case  ._1516_x002D_4: return "1516-4"
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


        
