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
* specDomain: S15055 (C-0-T14914-S14915-S14916-S15055-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianCoushatta:Int,CustomStringConvertible
{
    case  _1186_x002D_6
    case  _1187_x002D_4

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianCoushatta?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianCoushatta?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianCoushatta(rawValue: i) 
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
            case  ._1186_x002D_6: return "1186-6"
            case  ._1187_x002D_4: return "1187-4"
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


        
