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
* specDomain: S11045 (C-0-T11040-S11045-cpt)
*/

public enum EPA_FdV_AUTHZ_ObsoleteEditStatus:Int,CustomStringConvertible
{
    case  O

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ObsoleteEditStatus?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ObsoleteEditStatus?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ObsoleteEditStatus(rawValue: i) 
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
            case  .O: return "O"
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


        
