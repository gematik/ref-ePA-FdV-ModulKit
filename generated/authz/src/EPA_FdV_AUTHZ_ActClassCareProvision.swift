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
* specDomain: S18964 (C-0-T11527-S13856-S18964-cpt)
*/

public enum EPA_FdV_AUTHZ_ActClassCareProvision:Int,CustomStringConvertible
{
    case  PCPR
    case  ENC

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActClassCareProvision?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActClassCareProvision?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActClassCareProvision(rawValue: i) 
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
            case  .PCPR: return "PCPR"
            case  .ENC: return "ENC"
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


        