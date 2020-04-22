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
* abstDomain: A17896 (C-0-T13953-A13954-A17896-cpt)
*/

public enum EPA_FdV_AUTHZ_ActBoundedROICode:Int,CustomStringConvertible
{
    case  ROIFS
    case  ROIPS

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActBoundedROICode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActBoundedROICode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActBoundedROICode(rawValue: i) 
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
            case  .ROIFS: return "ROIFS"
            case  .ROIPS: return "ROIPS"
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


        
