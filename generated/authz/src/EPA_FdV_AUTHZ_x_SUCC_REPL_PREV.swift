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
* abstDomain: A19753 (C-0-T10317-A19753-cpt)
*/

public enum EPA_FdV_AUTHZ_x_SUCC_REPL_PREV:Int,CustomStringConvertible
{
    case  PREV
    case  RPLC
    case  SUCC

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_SUCC_REPL_PREV?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_SUCC_REPL_PREV?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_SUCC_REPL_PREV(rawValue: i) 
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
            case  .PREV: return "PREV"
            case  .RPLC: return "RPLC"
            case  .SUCC: return "SUCC"
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


        
