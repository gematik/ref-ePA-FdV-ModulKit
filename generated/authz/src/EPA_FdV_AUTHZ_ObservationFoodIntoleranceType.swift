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
* specDomain: S21502 (C-0-T13953-A19820-A16226-S21498-S21502-cpt)
*/

public enum EPA_FdV_AUTHZ_ObservationFoodIntoleranceType:Int,CustomStringConvertible
{
    case  FINT
    case  FALG
    case  FNAINT

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ObservationFoodIntoleranceType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ObservationFoodIntoleranceType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ObservationFoodIntoleranceType(rawValue: i) 
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
            case  .FINT: return "FINT"
            case  .FALG: return "FALG"
            case  .FNAINT: return "FNAINT"
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


        