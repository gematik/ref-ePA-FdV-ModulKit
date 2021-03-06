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
* vocSet: T17385 (C-0-T17385-cpt)
*/

public enum EPA_FdV_AUTHZ_IntegrityCheckAlgorithm:Int,CustomStringConvertible
{
    case  SHA_x002D_1
    case  SHA_x002D_256

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_IntegrityCheckAlgorithm?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_IntegrityCheckAlgorithm?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_IntegrityCheckAlgorithm(rawValue: i) 
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
            case  .SHA_x002D_1: return "SHA-1"
            case  .SHA_x002D_256: return "SHA-256"
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


        
