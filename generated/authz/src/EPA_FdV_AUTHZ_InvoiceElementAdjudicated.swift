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
* abstDomain: A17530 (C-0-T13953-A13954-A17522-A17530-cpt)
*/

public enum EPA_FdV_AUTHZ_InvoiceElementAdjudicated:Int,CustomStringConvertible
{
    case  ADNPPPELAT
    case  ADNPPPELCT
    case  ADNPPPMNAT
    case  ADNPPPMNCT
    case  ADNPSPELAT
    case  ADNPSPELCT
    case  ADNPSPMNAT
    case  ADNPSPMNCT
    case  ADNFPPELAT
    case  ADNFPPELCT
    case  ADNFPPMNAT
    case  ADNFPPMNCT
    case  ADNFSPELAT
    case  ADNFSPELCT
    case  ADNFSPMNAT
    case  ADNFSPMNCT
    case  ADPPPPELAT
    case  ADPPPPELCT
    case  ADPPPPMNAT
    case  ADPPPPMNCT
    case  ADPPSPELAT
    case  ADPPSPELCT
    case  ADPPSPMNAT
    case  ADPPSPMNCT
    case  ADRFPPELAT
    case  ADRFPPELCT
    case  ADRFPPMNAT
    case  ADRFPPMNCT
    case  ADRFSPELAT
    case  ADRFSPELCT
    case  ADRFSPMNAT
    case  ADRFSPMNCT

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_InvoiceElementAdjudicated?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_InvoiceElementAdjudicated?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_InvoiceElementAdjudicated(rawValue: i) 
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
            case  .ADNPPPELAT: return "ADNPPPELAT"
            case  .ADNPPPELCT: return "ADNPPPELCT"
            case  .ADNPPPMNAT: return "ADNPPPMNAT"
            case  .ADNPPPMNCT: return "ADNPPPMNCT"
            case  .ADNPSPELAT: return "ADNPSPELAT"
            case  .ADNPSPELCT: return "ADNPSPELCT"
            case  .ADNPSPMNAT: return "ADNPSPMNAT"
            case  .ADNPSPMNCT: return "ADNPSPMNCT"
            case  .ADNFPPELAT: return "ADNFPPELAT"
            case  .ADNFPPELCT: return "ADNFPPELCT"
            case  .ADNFPPMNAT: return "ADNFPPMNAT"
            case  .ADNFPPMNCT: return "ADNFPPMNCT"
            case  .ADNFSPELAT: return "ADNFSPELAT"
            case  .ADNFSPELCT: return "ADNFSPELCT"
            case  .ADNFSPMNAT: return "ADNFSPMNAT"
            case  .ADNFSPMNCT: return "ADNFSPMNCT"
            case  .ADPPPPELAT: return "ADPPPPELAT"
            case  .ADPPPPELCT: return "ADPPPPELCT"
            case  .ADPPPPMNAT: return "ADPPPPMNAT"
            case  .ADPPPPMNCT: return "ADPPPPMNCT"
            case  .ADPPSPELAT: return "ADPPSPELAT"
            case  .ADPPSPELCT: return "ADPPSPELCT"
            case  .ADPPSPMNAT: return "ADPPSPMNAT"
            case  .ADPPSPMNCT: return "ADPPSPMNCT"
            case  .ADRFPPELAT: return "ADRFPPELAT"
            case  .ADRFPPELCT: return "ADRFPPELCT"
            case  .ADRFPPMNAT: return "ADRFPPMNAT"
            case  .ADRFPPMNCT: return "ADRFPPMNCT"
            case  .ADRFSPELAT: return "ADRFSPELAT"
            case  .ADRFSPELCT: return "ADRFSPELCT"
            case  .ADRFSPMNAT: return "ADRFSPMNAT"
            case  .ADRFSPMNCT: return "ADRFSPMNCT"
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


        
