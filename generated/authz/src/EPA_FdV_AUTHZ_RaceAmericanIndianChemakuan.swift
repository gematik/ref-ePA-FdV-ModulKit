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
* specDomain: S14975 (C-0-T14914-S14915-S14916-S14975-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceAmericanIndianChemakuan:Int,CustomStringConvertible
{
    case  _1082_x002D_7
    case  _1083_x002D_5
    case  _1084_x002D_3

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceAmericanIndianChemakuan?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceAmericanIndianChemakuan?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceAmericanIndianChemakuan(rawValue: i) 
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
            case  ._1082_x002D_7: return "1082-7"
            case  ._1083_x002D_5: return "1083-5"
            case  ._1084_x002D_3: return "1084-3"
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


        
