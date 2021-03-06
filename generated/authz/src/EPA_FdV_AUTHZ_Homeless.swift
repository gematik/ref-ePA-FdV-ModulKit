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
* specDomain: S22193 (C-0-T220-S22193-cpt)
*/

public enum EPA_FdV_AUTHZ_Homeless:Int,CustomStringConvertible
{
    case  HL
    case  M
    case  T

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Homeless?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Homeless?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Homeless(rawValue: i) 
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
            case  .HL: return "HL"
            case  .M: return "M"
            case  .T: return "T"
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


        
