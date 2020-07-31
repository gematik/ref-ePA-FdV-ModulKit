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
* specDomain: S10813 (C-0-T10774-A10775-S10801-S10810-S10811-S10812-S10813-cpt)
*/

public enum EPA_FdV_AUTHZ_DataTypeHistoryOfAddress:Int,CustomStringConvertible
{
    case  HIST_x003C_AD_x003E_

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_DataTypeHistoryOfAddress?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_DataTypeHistoryOfAddress?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_DataTypeHistoryOfAddress(rawValue: i) 
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
            case  .HIST_x003C_AD_x003E_: return "HIST<AD>"
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


        