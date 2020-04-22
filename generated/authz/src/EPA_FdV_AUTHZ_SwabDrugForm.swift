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
* specDomain: S14542 (C-0-T19651-A14411-A14412-A14484-S14542-cpt)
*/

public enum EPA_FdV_AUTHZ_SwabDrugForm:Int,CustomStringConvertible
{
    case  SWAB
    case  MEDSWAB

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SwabDrugForm?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SwabDrugForm?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SwabDrugForm(rawValue: i) 
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
            case  .SWAB: return "SWAB"
            case  .MEDSWAB: return "MEDSWAB"
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


        
