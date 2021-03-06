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
* abstDomain: A19778 (C-0-T13953-A19778-cpt)
*/

public enum EPA_FdV_AUTHZ_ActNonObservationIndicationCode:Int,CustomStringConvertible
{
    case  IND02
    case  IND01
    case  IND05
    case  IND03
    case  IND04

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActNonObservationIndicationCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActNonObservationIndicationCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActNonObservationIndicationCode(rawValue: i) 
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
            case  .IND02: return "IND02"
            case  .IND01: return "IND01"
            case  .IND05: return "IND05"
            case  .IND03: return "IND03"
            case  .IND04: return "IND04"
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


        
