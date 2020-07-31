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
* specDomain: S21503 (C-0-T13953-A19820-A16226-S21498-S21503-cpt)
*/

public enum EPA_FdV_AUTHZ_ObservationEnvironmentalIntoleranceType:Int,CustomStringConvertible
{
    case  EINT
    case  EALG
    case  ENAINT

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ObservationEnvironmentalIntoleranceType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ObservationEnvironmentalIntoleranceType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ObservationEnvironmentalIntoleranceType(rawValue: i) 
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
            case  .EINT: return "EINT"
            case  .EALG: return "EALG"
            case  .ENAINT: return "ENAINT"
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


        