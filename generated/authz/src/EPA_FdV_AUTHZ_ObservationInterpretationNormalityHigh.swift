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
* specDomain: S10210 (C-0-T78-A10206-S10208-S10210-cpt)
*/

public enum EPA_FdV_AUTHZ_ObservationInterpretationNormalityHigh:Int,CustomStringConvertible
{
    case  H
    case  HH

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ObservationInterpretationNormalityHigh?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ObservationInterpretationNormalityHigh?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ObservationInterpretationNormalityHigh(rawValue: i) 
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
            case  .H: return "H"
            case  .HH: return "HH"
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


        
