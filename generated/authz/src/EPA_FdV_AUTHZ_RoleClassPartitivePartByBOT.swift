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
* specDomain: S19102 (C-0-T11555-S13940-A10429-S19102-cpt)
*/

public enum EPA_FdV_AUTHZ_RoleClassPartitivePartByBOT:Int,CustomStringConvertible
{
    case  PART
    case  ACTM

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RoleClassPartitivePartByBOT?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RoleClassPartitivePartByBOT?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RoleClassPartitivePartByBOT(rawValue: i) 
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
            case  .PART: return "PART"
            case  .ACTM: return "ACTM"
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


        
