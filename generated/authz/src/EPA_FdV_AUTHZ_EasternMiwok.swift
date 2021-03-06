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
* abstDomain: A18463 (C-0-T18130-A18413-A18458-A18459-A18463-cpt)
*/

public enum EPA_FdV_AUTHZ_EasternMiwok:Int,CustomStringConvertible
{
    case  x_x002D_CSM
    case  x_x002D_NSQ
    case  x_x002D_PMW
    case  x_x002D_SKD

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_EasternMiwok?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_EasternMiwok?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_EasternMiwok(rawValue: i) 
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
            case  .x_x002D_CSM: return "x-CSM"
            case  .x_x002D_NSQ: return "x-NSQ"
            case  .x_x002D_PMW: return "x-PMW"
            case  .x_x002D_SKD: return "x-SKD"
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


        
