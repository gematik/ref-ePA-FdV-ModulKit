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
* abstDomain: A17380 (C-0-T14581-A17021-A17380-cpt)
*/

public enum EPA_FdV_AUTHZ_VaginalRoute:Int,CustomStringConvertible
{
    case  DOUCHE
    case  VAGINSI
    case  VAGINS

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_VaginalRoute?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_VaginalRoute?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_VaginalRoute(rawValue: i) 
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
            case  .DOUCHE: return "DOUCHE"
            case  .VAGINSI: return "VAGINSI"
            case  .VAGINS: return "VAGINS"
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


        
