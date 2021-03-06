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
* abstDomain: A19810 (C-0-T12206-A19809-A19805-A19810-cpt)
*/

public enum EPA_FdV_AUTHZ_ClaimantCoveredPartyRoleType:Int,CustomStringConvertible
{
    case  CRIMEVIC
    case  INJ
    case  INJWKR

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ClaimantCoveredPartyRoleType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ClaimantCoveredPartyRoleType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ClaimantCoveredPartyRoleType(rawValue: i) 
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
            case  .CRIMEVIC: return "CRIMEVIC"
            case  .INJ: return "INJ"
            case  .INJWKR: return "INJWKR"
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


        
