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
* specDomain: S15425 (C-0-T14914-S14915-S14916-S15425-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianUte:Int,CustomStringConvertible
{
    case  _1670_x002D_9
    case  _1671_x002D_7
    case  _1672_x002D_5
    case  _1673_x002D_3

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianUte?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianUte?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianUte(rawValue: i) 
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
            case  ._1670_x002D_9: return "1670-9"
            case  ._1671_x002D_7: return "1671-7"
            case  ._1672_x002D_5: return "1672-5"
            case  ._1673_x002D_3: return "1673-3"
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


        
