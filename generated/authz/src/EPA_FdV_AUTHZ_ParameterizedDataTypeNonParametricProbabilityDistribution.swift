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
* specDomain: S10771 (C-0-T10759-S10760-S10771-cpt)
*/

public enum EPA_FdV_AUTHZ_ParameterizedDataTypeNonParametricProbabilityDistribution:Int,CustomStringConvertible
{
    case  NPPD_x003C_T_x003E_

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ParameterizedDataTypeNonParametricProbabilityDistribution?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ParameterizedDataTypeNonParametricProbabilityDistribution?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ParameterizedDataTypeNonParametricProbabilityDistribution(rawValue: i) 
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
            case  .NPPD_x003C_T_x003E_: return "NPPD<T>"
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


        
