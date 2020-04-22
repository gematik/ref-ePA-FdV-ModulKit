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
* specDomain: S10407 (C-0-T10405-S10407-cpt)
*/

public enum EPA_FdV_AUTHZ_MaterialDangerInfectious:Int,CustomStringConvertible
{
    case  INF
    case  BHZ

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_MaterialDangerInfectious?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_MaterialDangerInfectious?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_MaterialDangerInfectious(rawValue: i) 
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
            case  .INF: return "INF"
            case  .BHZ: return "BHZ"
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


        
