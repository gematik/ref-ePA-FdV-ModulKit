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
* specDomain: S21700 (C-0-T14878-A19692-A19781-A16124-A16656-A16657-S21700-cpt)
*/

public enum EPA_FdV_AUTHZ_TimingDetectedIssueCode:Int,CustomStringConvertible
{
    case  TIME
    case  ENDLATE
    case  STRTLATE

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_TimingDetectedIssueCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_TimingDetectedIssueCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_TimingDetectedIssueCode(rawValue: i) 
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
            case  .TIME: return "TIME"
            case  .ENDLATE: return "ENDLATE"
            case  .STRTLATE: return "STRTLATE"
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


        
