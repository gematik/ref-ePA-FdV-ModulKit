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
* abstDomain: A19764 (C-0-T10317-A19764-cpt)
*/

public enum EPA_FdV_AUTHZ_x_ActReplaceOrRevise:Int,CustomStringConvertible
{
    case  MOD
    case  RPLC

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_ActReplaceOrRevise?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_ActReplaceOrRevise?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_ActReplaceOrRevise(rawValue: i) 
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
            case  .MOD: return "MOD"
            case  .RPLC: return "RPLC"
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


        