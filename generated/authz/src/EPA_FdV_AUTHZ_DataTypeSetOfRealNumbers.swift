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
* specDomain: S10868 (C-0-T10774-A10775-S10801-S10868-cpt)
*/

public enum EPA_FdV_AUTHZ_DataTypeSetOfRealNumbers:Int,CustomStringConvertible
{
    case  SET_x003C_REAL_x003E_
    case  IVL_x003C_REAL_x003E_

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_DataTypeSetOfRealNumbers?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_DataTypeSetOfRealNumbers?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_DataTypeSetOfRealNumbers(rawValue: i) 
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
            case  .SET_x003C_REAL_x003E_: return "SET<REAL>"
            case  .IVL_x003C_REAL_x003E_: return "IVL<REAL>"
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


        