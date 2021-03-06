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
* abstDomain: A17164 (C-0-T14581-A17021-A17164-cpt)
*/

public enum EPA_FdV_AUTHZ_IntraocularRoute:Int,CustomStringConvertible
{
    case  IOINJ
    case  IOSURGINS
    case  IOINSTL
    case  IOIRR
    case  IOTOP

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_IntraocularRoute?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_IntraocularRoute?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_IntraocularRoute(rawValue: i) 
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
            case  .IOINJ: return "IOINJ"
            case  .IOSURGINS: return "IOSURGINS"
            case  .IOINSTL: return "IOINSTL"
            case  .IOIRR: return "IOIRR"
            case  .IOTOP: return "IOTOP"
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


        
