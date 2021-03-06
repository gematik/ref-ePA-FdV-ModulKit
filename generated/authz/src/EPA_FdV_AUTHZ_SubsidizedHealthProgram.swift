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
* specDomain: S22137 (C-0-T13953-A13954-A19855-A19858-S19718-S22137-cpt)
*/

public enum EPA_FdV_AUTHZ_SubsidizedHealthProgram:Int,CustomStringConvertible
{
    case  SUBSIDIZ
    case  SUBSIDMC
    case  SUBSUPP

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SubsidizedHealthProgram?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SubsidizedHealthProgram?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SubsidizedHealthProgram(rawValue: i) 
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
            case  .SUBSIDIZ: return "SUBSIDIZ"
            case  .SUBSIDMC: return "SUBSIDMC"
            case  .SUBSUPP: return "SUBSUPP"
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


        
