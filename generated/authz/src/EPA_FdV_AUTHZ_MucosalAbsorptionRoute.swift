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
* abstDomain: A16997 (C-0-T14581-A16931-A16997-cpt)
*/

public enum EPA_FdV_AUTHZ_MucosalAbsorptionRoute:Int,CustomStringConvertible
{
    case  IDOUDMAB
    case  ITRACHMAB
    case  SMUCMAB

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_MucosalAbsorptionRoute?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_MucosalAbsorptionRoute?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_MucosalAbsorptionRoute(rawValue: i) 
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
            case  .IDOUDMAB: return "IDOUDMAB"
            case  .ITRACHMAB: return "ITRACHMAB"
            case  .SMUCMAB: return "SMUCMAB"
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


        
