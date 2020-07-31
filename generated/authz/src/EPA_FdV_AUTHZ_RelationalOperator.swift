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
* vocSet: T209 (C-0-T209-cpt)
*/

public enum EPA_FdV_AUTHZ_RelationalOperator:Int,CustomStringConvertible
{
    case  CT
    case  EQ
    case  GN
    case  GT
    case  GE
    case  LT
    case  LE
    case  NE

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RelationalOperator?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RelationalOperator?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RelationalOperator(rawValue: i) 
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
            case  .CT: return "CT"
            case  .EQ: return "EQ"
            case  .GN: return "GN"
            case  .GT: return "GT"
            case  .GE: return "GE"
            case  .LT: return "LT"
            case  .LE: return "LE"
            case  .NE: return "NE"
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


        