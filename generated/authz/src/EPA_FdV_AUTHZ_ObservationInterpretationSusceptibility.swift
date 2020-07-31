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
* abstDomain: A10219 (C-0-T78-A10219-cpt)
*/

public enum EPA_FdV_AUTHZ_ObservationInterpretationSusceptibility:Int,CustomStringConvertible
{
    case  I
    case  MS
    case  R
    case  S
    case  VS

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ObservationInterpretationSusceptibility?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ObservationInterpretationSusceptibility?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ObservationInterpretationSusceptibility(rawValue: i) 
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
            case  .I: return "I"
            case  .MS: return "MS"
            case  .R: return "R"
            case  .S: return "S"
            case  .VS: return "VS"
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


        