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
* specDomain: S19986 (C-0-T10317-A18977-S10321-S19986-cpt)
*/

public enum EPA_FdV_AUTHZ_ActRelationshipMitigates:Int,CustomStringConvertible
{
    case  MITGT
    case  RCVY

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActRelationshipMitigates?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActRelationshipMitigates?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActRelationshipMitigates(rawValue: i) 
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
            case  .MITGT: return "MITGT"
            case  .RCVY: return "RCVY"
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


        
