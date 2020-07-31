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
* specDomain: S10859 (C-0-T10774-A10775-S10856-S10859-cpt)
*/

public enum EPA_FdV_AUTHZ_DataTypeUncertainProbabilisticIntervalOfPhysicalQuantities:Int,CustomStringConvertible
{
    case  UVP_x003C_IVL_x003C_PQ_x003E__x003E_

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_DataTypeUncertainProbabilisticIntervalOfPhysicalQuantities?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_DataTypeUncertainProbabilisticIntervalOfPhysicalQuantities?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_DataTypeUncertainProbabilisticIntervalOfPhysicalQuantities(rawValue: i) 
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
            case  .UVP_x003C_IVL_x003C_PQ_x003E__x003E_: return "UVP<IVL<PQ>>"
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


        