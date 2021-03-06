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
* abstDomain: A18400 (C-0-T18130-A18352-A18356-A18358-A18399-A18400-cpt)
*/

public enum EPA_FdV_AUTHZ_WesternApachean:Int,CustomStringConvertible
{
    case  x_x002D_NAV
    case  x_x002D_APM
    case  x_x002D_APW

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_WesternApachean?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_WesternApachean?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_WesternApachean(rawValue: i) 
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
            case  .x_x002D_NAV: return "x-NAV"
            case  .x_x002D_APM: return "x-APM"
            case  .x_x002D_APW: return "x-APW"
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


        
