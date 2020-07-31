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
* abstDomain: A17128 (C-0-T14581-A17021-A17128-cpt)
*/

public enum EPA_FdV_AUTHZ_IntraductalRoute:Int,CustomStringConvertible
{
    case  IDUCTINJ

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_IntraductalRoute?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_IntraductalRoute?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_IntraductalRoute(rawValue: i) 
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
            case  .IDUCTINJ: return "IDUCTINJ"
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


        