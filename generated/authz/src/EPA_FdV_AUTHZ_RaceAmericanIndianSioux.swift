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
* specDomain: S15376 (C-0-T14914-S14915-S14916-S15376-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianSioux:Int,CustomStringConvertible
{
    case  _1609_x002D_7
    case  _1610_x002D_5
    case  _1611_x002D_3
    case  _1612_x002D_1
    case  _1613_x002D_9
    case  _1614_x002D_7
    case  _1615_x002D_4
    case  _1616_x002D_2
    case  _1617_x002D_0
    case  _1618_x002D_8
    case  _1619_x002D_6
    case  _1620_x002D_4
    case  _1621_x002D_2
    case  _1622_x002D_0
    case  _1623_x002D_8
    case  _1624_x002D_6
    case  _1625_x002D_3
    case  _1626_x002D_1
    case  _1627_x002D_9
    case  _1628_x002D_7
    case  _1629_x002D_5
    case  _1631_x002D_1
    case  _1630_x002D_3
    case  _1632_x002D_9
    case  _1633_x002D_7
    case  _1634_x002D_5
    case  _1635_x002D_2
    case  _1636_x002D_0
    case  _1637_x002D_8
    case  _1638_x002D_6
    case  _1639_x002D_4
    case  _1640_x002D_2
    case  _1641_x002D_0

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianSioux?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianSioux?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianSioux(rawValue: i) 
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
            case  ._1609_x002D_7: return "1609-7"
            case  ._1610_x002D_5: return "1610-5"
            case  ._1611_x002D_3: return "1611-3"
            case  ._1612_x002D_1: return "1612-1"
            case  ._1613_x002D_9: return "1613-9"
            case  ._1614_x002D_7: return "1614-7"
            case  ._1615_x002D_4: return "1615-4"
            case  ._1616_x002D_2: return "1616-2"
            case  ._1617_x002D_0: return "1617-0"
            case  ._1618_x002D_8: return "1618-8"
            case  ._1619_x002D_6: return "1619-6"
            case  ._1620_x002D_4: return "1620-4"
            case  ._1621_x002D_2: return "1621-2"
            case  ._1622_x002D_0: return "1622-0"
            case  ._1623_x002D_8: return "1623-8"
            case  ._1624_x002D_6: return "1624-6"
            case  ._1625_x002D_3: return "1625-3"
            case  ._1626_x002D_1: return "1626-1"
            case  ._1627_x002D_9: return "1627-9"
            case  ._1628_x002D_7: return "1628-7"
            case  ._1629_x002D_5: return "1629-5"
            case  ._1631_x002D_1: return "1631-1"
            case  ._1630_x002D_3: return "1630-3"
            case  ._1632_x002D_9: return "1632-9"
            case  ._1633_x002D_7: return "1633-7"
            case  ._1634_x002D_5: return "1634-5"
            case  ._1635_x002D_2: return "1635-2"
            case  ._1636_x002D_0: return "1636-0"
            case  ._1637_x002D_8: return "1637-8"
            case  ._1638_x002D_6: return "1638-6"
            case  ._1639_x002D_4: return "1639-4"
            case  ._1640_x002D_2: return "1640-2"
            case  ._1641_x002D_0: return "1641-0"
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


        
