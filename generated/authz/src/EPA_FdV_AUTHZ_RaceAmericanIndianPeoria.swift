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
* specDomain: S15248 (C-0-T14914-S14915-S14916-S15248-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianPeoria:Int,CustomStringConvertible
{
    case  _1450_x002D_6
    case  _1451_x002D_4

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianPeoria?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianPeoria?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianPeoria(rawValue: i) 
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
            case  ._1450_x002D_6: return "1450-6"
            case  ._1451_x002D_4: return "1451-4"
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


        
