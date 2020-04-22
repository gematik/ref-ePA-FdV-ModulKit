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
* abstDomain: A17563 (C-0-T13953-A13954-A17522-A17563-cpt)
*/

public enum EPA_FdV_AUTHZ_InvoiceElementPaid:Int,CustomStringConvertible
{
    case  PDNPPPELAT
    case  PDNPPPELCT
    case  PDNPPPMNAT
    case  PDNPPPMNCT
    case  PDNPSPELAT
    case  PDNPSPELCT
    case  PDNPSPMNAT
    case  PDNPSPMNCT
    case  PDNFPPELAT
    case  PDNFPPELCT
    case  PDNFPPMNAT
    case  PDNFPPMNCT
    case  PDNFSPELAT
    case  PDNFSPELCT
    case  PDNFSPMNAT
    case  PDNFSPMNCT
    case  PDPPPPELAT
    case  PDPPPPELCT
    case  PDPPPPMNAT
    case  PDPPPPMNCT
    case  PDPPSPELAT
    case  PDPPSPELCT
    case  PDPPSPMNAT
    case  PDPPSPMNCT

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_InvoiceElementPaid?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_InvoiceElementPaid?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_InvoiceElementPaid(rawValue: i) 
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
            case  .PDNPPPELAT: return "PDNPPPELAT"
            case  .PDNPPPELCT: return "PDNPPPELCT"
            case  .PDNPPPMNAT: return "PDNPPPMNAT"
            case  .PDNPPPMNCT: return "PDNPPPMNCT"
            case  .PDNPSPELAT: return "PDNPSPELAT"
            case  .PDNPSPELCT: return "PDNPSPELCT"
            case  .PDNPSPMNAT: return "PDNPSPMNAT"
            case  .PDNPSPMNCT: return "PDNPSPMNCT"
            case  .PDNFPPELAT: return "PDNFPPELAT"
            case  .PDNFPPELCT: return "PDNFPPELCT"
            case  .PDNFPPMNAT: return "PDNFPPMNAT"
            case  .PDNFPPMNCT: return "PDNFPPMNCT"
            case  .PDNFSPELAT: return "PDNFSPELAT"
            case  .PDNFSPELCT: return "PDNFSPELCT"
            case  .PDNFSPMNAT: return "PDNFSPMNAT"
            case  .PDNFSPMNCT: return "PDNFSPMNCT"
            case  .PDPPPPELAT: return "PDPPPPELAT"
            case  .PDPPPPELCT: return "PDPPPPELCT"
            case  .PDPPPPMNAT: return "PDPPPPMNAT"
            case  .PDPPPPMNCT: return "PDPPPPMNCT"
            case  .PDPPSPELAT: return "PDPPSPELAT"
            case  .PDPPSPELCT: return "PDPPSPELCT"
            case  .PDPPSPMNAT: return "PDPPSPMNAT"
            case  .PDPPSPMNCT: return "PDPPSPMNCT"
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


        
