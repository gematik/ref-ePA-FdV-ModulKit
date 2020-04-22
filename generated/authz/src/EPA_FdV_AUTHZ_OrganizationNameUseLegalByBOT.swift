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
* specDomain: S10176 (C-0-T15913-A15914-S10176-cpt)
*/

public enum EPA_FdV_AUTHZ_OrganizationNameUseLegalByBOT:Int,CustomStringConvertible
{
    case  L
    case  OR

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_OrganizationNameUseLegalByBOT?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_OrganizationNameUseLegalByBOT?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_OrganizationNameUseLegalByBOT(rawValue: i) 
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
            case  .L: return "L"
            case  .OR: return "OR"
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


        
