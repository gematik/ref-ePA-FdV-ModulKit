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
* specDomain: S10189 (C-0-T220-S10189-cpt)
*/

public enum EPA_FdV_AUTHZ_Institution:Int,CustomStringConvertible
{
    case  I
    case  X
    case  G
    case  N
    case  CS

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Institution?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Institution?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Institution(rawValue: i) 
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
            case  .I: return "I"
            case  .X: return "X"
            case  .G: return "G"
            case  .N: return "N"
            case  .CS: return "CS"
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


        
