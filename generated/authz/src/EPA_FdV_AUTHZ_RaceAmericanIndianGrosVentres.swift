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
* specDomain: S15116 (C-0-T14914-S14915-S14916-S15116-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianGrosVentres:Int,CustomStringConvertible
{
    case  _1264_x002D_1
    case  _1265_x002D_8

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianGrosVentres?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianGrosVentres?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianGrosVentres(rawValue: i) 
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
            case  ._1264_x002D_1: return "1264-1"
            case  ._1265_x002D_8: return "1265-8"
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


        
