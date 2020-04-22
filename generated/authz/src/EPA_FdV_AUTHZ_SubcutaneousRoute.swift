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
* abstDomain: A17339 (C-0-T14581-A17021-A17339-cpt)
*/

public enum EPA_FdV_AUTHZ_SubcutaneousRoute:Int,CustomStringConvertible
{
    case  SQIMPLNT
    case  SQINFUS
    case  IPUMPINJ
    case  SQ
    case  SQSURGINS

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SubcutaneousRoute?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SubcutaneousRoute?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SubcutaneousRoute(rawValue: i) 
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
            case  .SQIMPLNT: return "SQIMPLNT"
            case  .SQINFUS: return "SQINFUS"
            case  .IPUMPINJ: return "IPUMPINJ"
            case  .SQ: return "SQ"
            case  .SQSURGINS: return "SQSURGINS"
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


        
