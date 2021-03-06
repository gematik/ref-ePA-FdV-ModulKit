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
* abstDomain: A13688 (C-0-T13129-A13130-A13644-A13688-cpt)
*/

public enum EPA_FdV_AUTHZ_PathologySpecialistOrTechnologistHIPAA:Int,CustomStringConvertible
{
    case  _246QB0000N
    case  _246QC1000N
    case  _246QC2700N
    case  _246QH0401N
    case  _246QH0000N
    case  _246QH0600N
    case  _246QI0000N
    case  _246QL0900N
    case  _246QL0901N
    case  _246QM0706N
    case  _246QM0900N

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_PathologySpecialistOrTechnologistHIPAA?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_PathologySpecialistOrTechnologistHIPAA?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_PathologySpecialistOrTechnologistHIPAA(rawValue: i) 
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
            case  ._246QB0000N: return "246QB0000N"
            case  ._246QC1000N: return "246QC1000N"
            case  ._246QC2700N: return "246QC2700N"
            case  ._246QH0401N: return "246QH0401N"
            case  ._246QH0000N: return "246QH0000N"
            case  ._246QH0600N: return "246QH0600N"
            case  ._246QI0000N: return "246QI0000N"
            case  ._246QL0900N: return "246QL0900N"
            case  ._246QL0901N: return "246QL0901N"
            case  ._246QM0706N: return "246QM0706N"
            case  ._246QM0900N: return "246QM0900N"
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


        
