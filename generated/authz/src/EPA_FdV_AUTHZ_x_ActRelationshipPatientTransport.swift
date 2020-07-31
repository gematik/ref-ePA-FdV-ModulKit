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
* abstDomain: A19005 (C-0-T10317-A19005-cpt)
*/

public enum EPA_FdV_AUTHZ_x_ActRelationshipPatientTransport:Int,CustomStringConvertible
{
    case  ARR
    case  DEP

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_ActRelationshipPatientTransport?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_ActRelationshipPatientTransport?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_ActRelationshipPatientTransport(rawValue: i) 
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
            case  .ARR: return "ARR"
            case  .DEP: return "DEP"
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


        