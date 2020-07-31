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
* abstDomain: A19720 (C-0-T12206-A19720-cpt)
*/

public enum EPA_FdV_AUTHZ_MedicationGeneralizationRoleType:Int,CustomStringConvertible
{
    case  GD
    case  GDF
    case  GDS
    case  GDSF
    case  MGDSF

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_MedicationGeneralizationRoleType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_MedicationGeneralizationRoleType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_MedicationGeneralizationRoleType(rawValue: i) 
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
            case  .GD: return "GD"
            case  .GDF: return "GDF"
            case  .GDS: return "GDS"
            case  .GDSF: return "GDSF"
            case  .MGDSF: return "MGDSF"
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


        