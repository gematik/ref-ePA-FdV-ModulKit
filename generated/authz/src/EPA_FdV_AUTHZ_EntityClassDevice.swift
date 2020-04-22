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
* specDomain: S11623 (C-0-T10882-S13922-S10883-S13934-S11623-cpt)
*/

public enum EPA_FdV_AUTHZ_EntityClassDevice:Int,CustomStringConvertible
{
    case  DEV
    case  CER
    case  MODDV

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_EntityClassDevice?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_EntityClassDevice?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_EntityClassDevice(rawValue: i) 
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
            case  .DEV: return "DEV"
            case  .CER: return "CER"
            case  .MODDV: return "MODDV"
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


        
