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
* vocSet: T390 (C-0-T390-cpt)
*/

public enum EPA_FdV_AUTHZ_Sequencing:Int,CustomStringConvertible
{
    case  A
    case  D
    case  N

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Sequencing?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Sequencing?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Sequencing(rawValue: i) 
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
            case  .A: return "A"
            case  .D: return "D"
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


        
