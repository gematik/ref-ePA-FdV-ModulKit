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
* specDomain: S13629 (C-0-T13129-A13130-A13592-S13629-cpt)
*/

public enum EPA_FdV_AUTHZ_RespiratoryTherapistHIPAA:Int,CustomStringConvertible
{
    case  _225900000N
    case  _2259P1700N

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RespiratoryTherapistHIPAA?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RespiratoryTherapistHIPAA?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RespiratoryTherapistHIPAA(rawValue: i) 
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
            case  ._225900000N: return "225900000N"
            case  ._2259P1700N: return "2259P1700N"
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


        
