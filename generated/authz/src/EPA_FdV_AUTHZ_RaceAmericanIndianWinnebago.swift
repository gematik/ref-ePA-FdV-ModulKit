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
* specDomain: S15442 (C-0-T14914-S14915-S14916-S15442-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianWinnebago:Int,CustomStringConvertible
{
    case  _1696_x002D_4
    case  _1697_x002D_2
    case  _1698_x002D_0

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianWinnebago?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianWinnebago?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianWinnebago(rawValue: i) 
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
            case  ._1696_x002D_4: return "1696-4"
            case  ._1697_x002D_2: return "1697-2"
            case  ._1698_x002D_0: return "1698-0"
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


        