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
* abstDomain: A19738 (C-0-T10228-A19738-cpt)
*/

public enum EPA_FdV_AUTHZ_x_VeryBasicConfidentialityKind:Int,CustomStringConvertible
{
    case  N
    case  R

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_VeryBasicConfidentialityKind?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_VeryBasicConfidentialityKind?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_VeryBasicConfidentialityKind(rawValue: i) 
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
            case  .N: return "N"
            case  .R: return "R"
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


        