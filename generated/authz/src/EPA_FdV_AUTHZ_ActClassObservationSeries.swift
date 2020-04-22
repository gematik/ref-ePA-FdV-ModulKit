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
* specDomain: S18875 (C-0-T11527-S13856-S11529-S18875-cpt)
*/

public enum EPA_FdV_AUTHZ_ActClassObservationSeries:Int,CustomStringConvertible
{
    case  OBSSER
    case  OBSCOR

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActClassObservationSeries?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActClassObservationSeries?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActClassObservationSeries(rawValue: i) 
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
            case  .OBSSER: return "OBSSER"
            case  .OBSCOR: return "OBSCOR"
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


        
