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
* specDomain: S21981 (C-0-T11527-S13856-S21981-cpt)
*/

public enum EPA_FdV_AUTHZ_ActClassPolicy:Int,CustomStringConvertible
{
    case  POLICY
    case  JURISPOL
    case  ORGPOL
    case  SCOPOL
    case  STDPOL

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActClassPolicy?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActClassPolicy?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActClassPolicy(rawValue: i) 
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
            case  .POLICY: return "POLICY"
            case  .JURISPOL: return "JURISPOL"
            case  .ORGPOL: return "ORGPOL"
            case  .SCOPOL: return "SCOPOL"
            case  .STDPOL: return "STDPOL"
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


        