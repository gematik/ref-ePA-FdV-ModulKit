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
* specDomain: S15266 (C-0-T14914-S14915-S14916-S15266-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianPonca:Int,CustomStringConvertible
{
    case  _1474_x002D_6
    case  _1475_x002D_3
    case  _1476_x002D_1

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianPonca?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianPonca?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianPonca(rawValue: i) 
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
            case  ._1474_x002D_6: return "1474-6"
            case  ._1475_x002D_3: return "1475-3"
            case  ._1476_x002D_1: return "1476-1"
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


        
