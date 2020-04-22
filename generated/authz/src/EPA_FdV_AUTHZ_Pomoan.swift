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
* abstDomain: A18253 (C-0-T18130-A18241-A18253-cpt)
*/

public enum EPA_FdV_AUTHZ_Pomoan:Int,CustomStringConvertible
{
    case  x_x002D_POO
    case  x_x002D_KJU
    case  x_x002D_PEF
    case  x_x002D_PEO
    case  x_x002D_PEQ

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Pomoan?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Pomoan?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Pomoan(rawValue: i) 
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
            case  .x_x002D_POO: return "x-POO"
            case  .x_x002D_KJU: return "x-KJU"
            case  .x_x002D_PEF: return "x-PEF"
            case  .x_x002D_PEO: return "x-PEO"
            case  .x_x002D_PEQ: return "x-PEQ"
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


        
