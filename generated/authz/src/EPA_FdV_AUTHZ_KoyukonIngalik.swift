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
* abstDomain: A18366 (C-0-T18130-A18352-A18356-A18358-A18365-A18366-cpt)
*/

public enum EPA_FdV_AUTHZ_KoyukonIngalik:Int,CustomStringConvertible
{
    case  x_x002D_ING
    case  x_x002D_HOI
    case  x_x002D_KOY

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_KoyukonIngalik?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_KoyukonIngalik?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_KoyukonIngalik(rawValue: i) 
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
            case  .x_x002D_ING: return "x-ING"
            case  .x_x002D_HOI: return "x-HOI"
            case  .x_x002D_KOY: return "x-KOY"
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


        
