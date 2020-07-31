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
* vocSet: T395 (C-0-T395-cpt)
*/

public enum EPA_FdV_AUTHZ_ModifyIndicator:Int,CustomStringConvertible
{
    case  M
    case  N

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ModifyIndicator?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ModifyIndicator?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ModifyIndicator(rawValue: i) 
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
            case  .M: return "M"
            case  .N: return "N"
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


        