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
* abstDomain: A17036 (C-0-T14581-A17021-A17036-cpt)
*/

public enum EPA_FdV_AUTHZ_CecostomyRoute:Int,CustomStringConvertible
{
    case  CECINSTL

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_CecostomyRoute?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_CecostomyRoute?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_CecostomyRoute(rawValue: i) 
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
            case  .CECINSTL: return "CECINSTL"
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


        
