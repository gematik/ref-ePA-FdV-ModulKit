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
* specDomain: S21458 (C-0-T16040-A19667-A19668-S21458-cpt)
*/

public enum EPA_FdV_AUTHZ_VaccineEntityType:Int,CustomStringConvertible
{
    case  VCCNE

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_VaccineEntityType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_VaccineEntityType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_VaccineEntityType(rawValue: i) 
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
            case  .VCCNE: return "VCCNE"
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


        
