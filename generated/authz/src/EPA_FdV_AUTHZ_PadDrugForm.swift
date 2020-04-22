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
* specDomain: S14497 (C-0-T19651-A14411-A14412-A14484-S14497-cpt)
*/

public enum EPA_FdV_AUTHZ_PadDrugForm:Int,CustomStringConvertible
{
    case  PAD
    case  MEDPAD

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_PadDrugForm?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_PadDrugForm?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_PadDrugForm(rawValue: i) 
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
            case  .PAD: return "PAD"
            case  .MEDPAD: return "MEDPAD"
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


        
