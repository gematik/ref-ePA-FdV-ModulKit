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
* specDomain: S15120 (C-0-T14914-S14915-S14916-S15120-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianHoopa:Int,CustomStringConvertible
{
    case  _1271_x002D_6
    case  _1272_x002D_4
    case  _1273_x002D_2

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianHoopa?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianHoopa?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianHoopa(rawValue: i) 
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
            case  ._1271_x002D_6: return "1271-6"
            case  ._1272_x002D_4: return "1272-4"
            case  ._1273_x002D_2: return "1273-2"
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


        