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
* specDomain: S15180 (C-0-T14914-S14915-S14916-S15180-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianMiami:Int,CustomStringConvertible
{
    case  _1358_x002D_1
    case  _1359_x002D_9
    case  _1360_x002D_7
    case  _1361_x002D_5

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianMiami?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianMiami?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianMiami(rawValue: i) 
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
            case  ._1358_x002D_1: return "1358-1"
            case  ._1359_x002D_9: return "1359-9"
            case  ._1360_x002D_7: return "1360-7"
            case  ._1361_x002D_5: return "1361-5"
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


        
