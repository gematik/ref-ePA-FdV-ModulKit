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
* specDomain: S10765 (C-0-T10759-S10761-S10765-cpt)
*/

public enum EPA_FdV_AUTHZ_ParameterizedDataTypePeriodicInterval:Int,CustomStringConvertible
{
    case  PIVL_x003C_T_x003E_

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ParameterizedDataTypePeriodicInterval?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ParameterizedDataTypePeriodicInterval?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ParameterizedDataTypePeriodicInterval(rawValue: i) 
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
            case  .PIVL_x003C_T_x003E_: return "PIVL<T>"
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


        
