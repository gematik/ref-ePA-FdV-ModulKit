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
* specDomain: S19992 (C-0-T14079-A19378-S19992-cpt)
*/

public enum EPA_FdV_AUTHZ_AlgorithmicDecisionObservationMethod:Int,CustomStringConvertible
{
    case  ALGM
    case  BYCL

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_AlgorithmicDecisionObservationMethod?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_AlgorithmicDecisionObservationMethod?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_AlgorithmicDecisionObservationMethod(rawValue: i) 
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
            case  .ALGM: return "ALGM"
            case  .BYCL: return "BYCL"
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


        
