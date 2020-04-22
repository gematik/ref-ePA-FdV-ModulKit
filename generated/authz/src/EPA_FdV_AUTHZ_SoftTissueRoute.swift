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
* abstDomain: A17331 (C-0-T14581-A17021-A17331-cpt)
*/

public enum EPA_FdV_AUTHZ_SoftTissueRoute:Int,CustomStringConvertible
{
    case  SOFTISINJ
    case  SOFTISINSTIL

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SoftTissueRoute?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SoftTissueRoute?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SoftTissueRoute(rawValue: i) 
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
            case  .SOFTISINJ: return "SOFTISINJ"
            case  .SOFTISINSTIL: return "SOFTISINSTIL"
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


        
