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
* abstDomain: A17019 (C-0-T14581-A16931-A17019-cpt)
*/

public enum EPA_FdV_AUTHZ_ElectroOsmosisRoute:Int,CustomStringConvertible
{
    case  ELECTOSMOS

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ElectroOsmosisRoute?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ElectroOsmosisRoute?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ElectroOsmosisRoute(rawValue: i) 
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
            case  .ELECTOSMOS: return "ELECTOSMOS"
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


        
