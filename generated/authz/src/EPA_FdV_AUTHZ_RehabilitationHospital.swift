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
* specDomain: S10604 (C-0-T12206-A17660-A19450-A10588-S10602-S10604-cpt)
*/

public enum EPA_FdV_AUTHZ_RehabilitationHospital:Int,CustomStringConvertible
{
    case  RH
    case  _283XC2000N

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RehabilitationHospital?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RehabilitationHospital?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RehabilitationHospital(rawValue: i) 
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
            case  .RH: return "RH"
            case  ._283XC2000N: return "283XC2000N"
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


        
