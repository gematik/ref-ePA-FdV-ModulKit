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
* specDomain: S22190 (C-0-T220-S22190-cpt)
*/

public enum EPA_FdV_AUTHZ_PrivateResidence:Int,CustomStringConvertible
{
    case  PR
    case  H
    case  R
    case  SL

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_PrivateResidence?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_PrivateResidence?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_PrivateResidence(rawValue: i) 
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
            case  .PR: return "PR"
            case  .H: return "H"
            case  .R: return "R"
            case  .SL: return "SL"
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


        