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
* specDomain: S14451 (C-0-T19651-A14411-A14412-A14441-S14451-cpt)
*/

public enum EPA_FdV_AUTHZ_PasteDrugForm:Int,CustomStringConvertible
{
    case  PASTE
    case  PUD
    case  TPASTE

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_PasteDrugForm?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_PasteDrugForm?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_PasteDrugForm(rawValue: i) 
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
            case  .PASTE: return "PASTE"
            case  .PUD: return "PUD"
            case  .TPASTE: return "TPASTE"
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


        
