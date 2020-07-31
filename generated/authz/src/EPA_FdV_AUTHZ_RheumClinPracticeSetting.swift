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
* specDomain: S10593 (C-0-T12206-A17660-A19450-A10588-S10589-S10593-cpt)
*/

public enum EPA_FdV_AUTHZ_RheumClinPracticeSetting:Int,CustomStringConvertible
{
    case  RHEUM
    case  PEDRHEUM

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RheumClinPracticeSetting?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RheumClinPracticeSetting?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RheumClinPracticeSetting(rawValue: i) 
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
            case  .RHEUM: return "RHEUM"
            case  .PEDRHEUM: return "PEDRHEUM"
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


        