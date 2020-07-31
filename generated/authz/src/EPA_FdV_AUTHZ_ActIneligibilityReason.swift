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
* abstDomain: A19355 (C-0-T14878-A19871-A19694-A19355-cpt)
*/

public enum EPA_FdV_AUTHZ_ActIneligibilityReason:Int,CustomStringConvertible
{
    case  COVSUS
    case  DECSD
    case  REGERR

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActIneligibilityReason?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActIneligibilityReason?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActIneligibilityReason(rawValue: i) 
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
            case  .COVSUS: return "COVSUS"
            case  .DECSD: return "DECSD"
            case  .REGERR: return "REGERR"
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


        