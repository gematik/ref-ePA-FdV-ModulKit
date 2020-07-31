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
* abstDomain: A19756 (C-0-T14878-A19754-A19756-cpt)
*/

public enum EPA_FdV_AUTHZ_ClinicalResearchObservationReason:Int,CustomStringConvertible
{
    case  NPT
    case  UPT
    case  PPT

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ClinicalResearchObservationReason?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ClinicalResearchObservationReason?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ClinicalResearchObservationReason(rawValue: i) 
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
            case  .NPT: return "NPT"
            case  .UPT: return "UPT"
            case  .PPT: return "PPT"
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


        