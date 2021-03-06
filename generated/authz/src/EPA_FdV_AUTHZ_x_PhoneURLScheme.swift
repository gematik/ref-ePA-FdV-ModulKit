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
* abstDomain: A19742 (C-0-T14866-A19742-cpt)
*/

public enum EPA_FdV_AUTHZ_x_PhoneURLScheme:Int,CustomStringConvertible
{
    case  fax
    case  tel

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_PhoneURLScheme?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_PhoneURLScheme?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_PhoneURLScheme(rawValue: i) 
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
            case  .fax: return "fax"
            case  .tel: return "tel"
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


        
