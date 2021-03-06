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
* vocSet: T103 (C-0-T103-cpt)
*/

public enum EPA_FdV_AUTHZ_ProcessingID:Int,CustomStringConvertible
{
    case  D
    case  P
    case  T

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ProcessingID?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ProcessingID?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ProcessingID(rawValue: i) 
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
            case  .D: return "D"
            case  .P: return "P"
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


        
