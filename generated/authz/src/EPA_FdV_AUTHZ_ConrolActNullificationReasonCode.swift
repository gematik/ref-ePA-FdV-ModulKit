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
* abstDomain: A19826 (C-0-T14878-A19692-A19826-cpt)
*/

public enum EPA_FdV_AUTHZ_ConrolActNullificationReasonCode:Int,CustomStringConvertible
{
    case  ALTD
    case  EIE

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ConrolActNullificationReasonCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ConrolActNullificationReasonCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ConrolActNullificationReasonCode(rawValue: i) 
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
            case  .ALTD: return "ALTD"
            case  .EIE: return "EIE"
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


        
