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
* specDomain: S15834 (C-0-T14914-S15814-S15834-cpt)
*/

public enum EPA_FdV_AUTHZ_RaceWhiteArab:Int,CustomStringConvertible
{
    case  _2129_x002D_5

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RaceWhiteArab?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RaceWhiteArab?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RaceWhiteArab(rawValue: i) 
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
            case  ._2129_x002D_5: return "2129-5"
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


        
