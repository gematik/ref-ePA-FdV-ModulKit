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
* abstDomain: A19322 (C-0-T13953-A19820-A16226-A19321-A19322-cpt)
*/

public enum EPA_FdV_AUTHZ_ECGObservationSeriesType:Int,CustomStringConvertible
{
    case  REPRESENTATIVE_BEAT
    case  RHYTHM

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ECGObservationSeriesType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ECGObservationSeriesType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ECGObservationSeriesType(rawValue: i) 
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
            case  .REPRESENTATIVE_BEAT: return "REPRESENTATIVE_BEAT"
            case  .RHYTHM: return "RHYTHM"
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


        
