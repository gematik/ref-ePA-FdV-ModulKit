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
* specDomain: S21445 (C-0-T14079-S21445-cpt)
*/

public enum EPA_FdV_AUTHZ__0272:Int,CustomStringConvertible
{
    case  _0272
    case  _0245
    case  _0246

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ__0272?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ__0272?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ__0272(rawValue: i) 
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
            case  ._0272: return "0272"
            case  ._0245: return "0245"
            case  ._0246: return "0246"
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


        
