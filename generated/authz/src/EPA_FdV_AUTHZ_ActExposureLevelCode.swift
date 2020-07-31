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
* vocSet: T19939 (C-0-T19939-cpt)
*/

public enum EPA_FdV_AUTHZ_ActExposureLevelCode:Int,CustomStringConvertible
{
    case  HIGH
    case  LOW
    case  MEDIUM

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActExposureLevelCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActExposureLevelCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActExposureLevelCode(rawValue: i) 
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
            case  .HIGH: return "HIGH"
            case  .LOW: return "LOW"
            case  .MEDIUM: return "MEDIUM"
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


        