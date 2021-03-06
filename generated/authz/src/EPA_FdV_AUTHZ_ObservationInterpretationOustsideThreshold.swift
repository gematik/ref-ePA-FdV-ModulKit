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
* specDomain: S21634 (C-0-T78-A19759-S21634-cpt)
*/

public enum EPA_FdV_AUTHZ_ObservationInterpretationOustsideThreshold:Int,CustomStringConvertible
{
    case  EX
    case  HX
    case  LX

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ObservationInterpretationOustsideThreshold?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ObservationInterpretationOustsideThreshold?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ObservationInterpretationOustsideThreshold(rawValue: i) 
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
            case  .EX: return "EX"
            case  .HX: return "HX"
            case  .LX: return "LX"
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


        
