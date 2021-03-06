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
* abstDomain: A17284 (C-0-T14581-A17021-A17284-cpt)
*/

public enum EPA_FdV_AUTHZ_OticRoute:Int,CustomStringConvertible
{
    case  OT

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_OticRoute?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_OticRoute?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_OticRoute(rawValue: i) 
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
            case  .OT: return "OT"
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


        
