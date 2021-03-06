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
* specDomain: S13609 (C-0-T13129-A13130-A13592-S13609-cpt)
*/

public enum EPA_FdV_AUTHZ_PhysicalTherapistHIPAA:Int,CustomStringConvertible
{
    case  _225100000N
    case  _2251C2600N
    case  _2251C0400N
    case  _2251E1300N
    case  _2251E1200N
    case  _2251G0304N
    case  _2251H1200N
    case  _2251H1300N
    case  _2251N0400N
    case  _2251X0800N
    case  _2251P0200N
    case  _2251S0007N

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_PhysicalTherapistHIPAA?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_PhysicalTherapistHIPAA?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_PhysicalTherapistHIPAA(rawValue: i) 
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
            case  ._225100000N: return "225100000N"
            case  ._2251C2600N: return "2251C2600N"
            case  ._2251C0400N: return "2251C0400N"
            case  ._2251E1300N: return "2251E1300N"
            case  ._2251E1200N: return "2251E1200N"
            case  ._2251G0304N: return "2251G0304N"
            case  ._2251H1200N: return "2251H1200N"
            case  ._2251H1300N: return "2251H1300N"
            case  ._2251N0400N: return "2251N0400N"
            case  ._2251X0800N: return "2251X0800N"
            case  ._2251P0200N: return "2251P0200N"
            case  ._2251S0007N: return "2251S0007N"
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


        
