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
* specDomain: S10934 (C-0-T12206-A17660-A19450-A10588-S10589-S10934-cpt)
*/

public enum EPA_FdV_AUTHZ_GIClinicPracticeSetting:Int,CustomStringConvertible
{
    case  GI
    case  PEDGI

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_GIClinicPracticeSetting?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_GIClinicPracticeSetting?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_GIClinicPracticeSetting(rawValue: i) 
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
            case  .GI: return "GI"
            case  .PEDGI: return "PEDGI"
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


        
