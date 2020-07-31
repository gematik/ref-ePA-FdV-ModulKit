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
* abstDomain: A10653 (C-0-T15880-A10653-cpt)
*/

public enum EPA_FdV_AUTHZ_x_PersonNamePartType:Int,CustomStringConvertible
{
    case  DEL
    case  FAM
    case  GIV
    case  PFX
    case  SFX

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_PersonNamePartType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_PersonNamePartType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_PersonNamePartType(rawValue: i) 
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
            case  .DEL: return "DEL"
            case  .FAM: return "FAM"
            case  .GIV: return "GIV"
            case  .PFX: return "PFX"
            case  .SFX: return "SFX"
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


        