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
* vocSet: T17704 (C-0-T17704-cpt)
*/

public enum EPA_FdV_AUTHZ_ActInvoiceElementModifier:Int,CustomStringConvertible
{
    case  EFORM
    case  FAX
    case  LINV
    case  PAPER

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActInvoiceElementModifier?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActInvoiceElementModifier?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActInvoiceElementModifier(rawValue: i) 
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
            case  .EFORM: return "EFORM"
            case  .FAX: return "FAX"
            case  .LINV: return "LINV"
            case  .PAPER: return "PAPER"
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


        
