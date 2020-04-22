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
* specDomain: S10770 (C-0-T10759-S10760-S10770-cpt)
*/

public enum EPA_FdV_AUTHZ_ParameterizedDataTypeUncertainValueProbabilistic:Int,CustomStringConvertible
{
    case  UVP_x003C_T_x003E_

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ParameterizedDataTypeUncertainValueProbabilistic?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ParameterizedDataTypeUncertainValueProbabilistic?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ParameterizedDataTypeUncertainValueProbabilistic(rawValue: i) 
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
            case  .UVP_x003C_T_x003E_: return "UVP<T>"
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


        
