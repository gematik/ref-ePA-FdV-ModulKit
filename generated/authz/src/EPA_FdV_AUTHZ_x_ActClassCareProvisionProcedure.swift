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
* abstDomain: A19889 (C-0-T11527-A19889-cpt)
*/

public enum EPA_FdV_AUTHZ_x_ActClassCareProvisionProcedure:Int,CustomStringConvertible
{
    case  PCPR
    case  PROC

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_ActClassCareProvisionProcedure?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_ActClassCareProvisionProcedure?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_ActClassCareProvisionProcedure(rawValue: i) 
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
            case  .PCPR: return "PCPR"
            case  .PROC: return "PROC"
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


        
