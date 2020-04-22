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
* abstDomain: A19371 (C-0-T10196-A19371-cpt)
*/

public enum EPA_FdV_AUTHZ_x_ActMoodDefEvnRqoPrmsPrp:Int,CustomStringConvertible
{
    case  DEF
    case  EVN
    case  PRMS
    case  PRP
    case  RQO

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_ActMoodDefEvnRqoPrmsPrp?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_ActMoodDefEvnRqoPrmsPrp?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_ActMoodDefEvnRqoPrmsPrp(rawValue: i) 
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
            case  .DEF: return "DEF"
            case  .EVN: return "EVN"
            case  .PRMS: return "PRMS"
            case  .PRP: return "PRP"
            case  .RQO: return "RQO"
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


        
