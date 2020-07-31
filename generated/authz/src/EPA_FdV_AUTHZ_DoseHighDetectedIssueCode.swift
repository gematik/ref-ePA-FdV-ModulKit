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
* specDomain: S16681 (C-0-T14878-A19692-A19781-A16124-A16656-A16657-S16680-S16681-cpt)
*/

public enum EPA_FdV_AUTHZ_DoseHighDetectedIssueCode:Int,CustomStringConvertible
{
    case  DOSEH
    case  DOSEHINDA
    case  DOSEHINDSA
    case  DOSEHIND
    case  DOSEHINDW

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_DoseHighDetectedIssueCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_DoseHighDetectedIssueCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_DoseHighDetectedIssueCode(rawValue: i) 
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
            case  .DOSEH: return "DOSEH"
            case  .DOSEHINDA: return "DOSEHINDA"
            case  .DOSEHINDSA: return "DOSEHINDSA"
            case  .DOSEHIND: return "DOSEHIND"
            case  .DOSEHINDW: return "DOSEHINDW"
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


        