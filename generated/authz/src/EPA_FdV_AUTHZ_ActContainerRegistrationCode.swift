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
* abstDomain: A14058 (C-0-T13953-A13954-A14058-cpt)
*/

public enum EPA_FdV_AUTHZ_ActContainerRegistrationCode:Int,CustomStringConvertible
{
    case  X
    case  ID
    case  IP
    case  O
    case  L
    case  M
    case  R

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActContainerRegistrationCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActContainerRegistrationCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActContainerRegistrationCode(rawValue: i) 
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
            case  .X: return "X"
            case  .ID: return "ID"
            case  .IP: return "IP"
            case  .O: return "O"
            case  .L: return "L"
            case  .M: return "M"
            case  .R: return "R"
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


        
