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
* abstDomain: A17113 (C-0-T14581-A17021-A17113-cpt)
*/

public enum EPA_FdV_AUTHZ_IntracoronalRoute:Int,CustomStringConvertible
{
    case  ICORONTA

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_IntracoronalRoute?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_IntracoronalRoute?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_IntracoronalRoute(rawValue: i) 
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
            case  .ICORONTA: return "ICORONTA"
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


        