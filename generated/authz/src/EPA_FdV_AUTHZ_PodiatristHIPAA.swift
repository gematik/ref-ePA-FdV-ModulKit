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
* specDomain: S13584 (C-0-T13129-A13130-A13582-S13584-cpt)
*/

public enum EPA_FdV_AUTHZ_PodiatristHIPAA:Int,CustomStringConvertible
{
    case  _213E00000N
    case  _213EG0000N
    case  _213EP0504N
    case  _213EP1101N
    case  _213ER0200N
    case  _213ES0000N
    case  _213ES0131N
    case  _213ES0103N

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_PodiatristHIPAA?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_PodiatristHIPAA?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_PodiatristHIPAA(rawValue: i) 
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
            case  ._213E00000N: return "213E00000N"
            case  ._213EG0000N: return "213EG0000N"
            case  ._213EP0504N: return "213EP0504N"
            case  ._213EP1101N: return "213EP1101N"
            case  ._213ER0200N: return "213ER0200N"
            case  ._213ES0000N: return "213ES0000N"
            case  ._213ES0131N: return "213ES0131N"
            case  ._213ES0103N: return "213ES0103N"
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


        
