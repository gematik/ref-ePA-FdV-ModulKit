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
* specDomain: S14617 (C-0-T14581-A17021-A17256-S14617-cpt)
*/

public enum EPA_FdV_AUTHZ_NasalInhalation:Int,CustomStringConvertible
{
    case  NASINHL
    case  NASINHLC
    case  NP

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_NasalInhalation?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_NasalInhalation?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_NasalInhalation(rawValue: i) 
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
            case  .NASINHL: return "NASINHL"
            case  .NASINHLC: return "NASINHLC"
            case  .NP: return "NP"
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


        
