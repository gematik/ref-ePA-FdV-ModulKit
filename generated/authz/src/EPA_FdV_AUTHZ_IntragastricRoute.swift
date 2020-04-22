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
* abstDomain: A17142 (C-0-T14581-A17021-A17142-cpt)
*/

public enum EPA_FdV_AUTHZ_IntragastricRoute:Int,CustomStringConvertible
{
    case  IGASTINSTIL
    case  IGASTIRR
    case  IGASTLAV

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_IntragastricRoute?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_IntragastricRoute?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_IntragastricRoute(rawValue: i) 
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
            case  .IGASTINSTIL: return "IGASTINSTIL"
            case  .IGASTIRR: return "IGASTIRR"
            case  .IGASTLAV: return "IGASTLAV"
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


        
