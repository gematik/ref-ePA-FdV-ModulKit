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
* abstDomain: A17795 (C-0-T14878-A19692-A19781-A16124-A16656-A16657-A16658-S16664-S16665-A17795-cpt)
*/

public enum EPA_FdV_AUTHZ_HeightSurfaceAreaAlert:Int,CustomStringConvertible
{
    case  DOSEHINDSA
    case  DOSELINDSA

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_HeightSurfaceAreaAlert?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_HeightSurfaceAreaAlert?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_HeightSurfaceAreaAlert(rawValue: i) 
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
            case  .DOSEHINDSA: return "DOSEHINDSA"
            case  .DOSELINDSA: return "DOSELINDSA"
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


        
