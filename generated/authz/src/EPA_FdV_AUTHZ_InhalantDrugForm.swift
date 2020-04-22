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
* specDomain: S14560 (C-0-T19651-A14411-A14412-A14559-S14560-cpt)
*/

public enum EPA_FdV_AUTHZ_InhalantDrugForm:Int,CustomStringConvertible
{
    case  INHL
    case  BAINHLPWD
    case  INHLPWD
    case  MDINHLPWD
    case  NASINHL
    case  ORINHL

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_InhalantDrugForm?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_InhalantDrugForm?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_InhalantDrugForm(rawValue: i) 
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
            case  .INHL: return "INHL"
            case  .BAINHLPWD: return "BAINHLPWD"
            case  .INHLPWD: return "INHLPWD"
            case  .MDINHLPWD: return "MDINHLPWD"
            case  .NASINHL: return "NASINHL"
            case  .ORINHL: return "ORINHL"
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


        
