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
* specDomain: S10808 (C-0-T10774-A10775-S10834-S10841-S10807-S10808-cpt)
*/

public enum EPA_FdV_AUTHZ_DataTypeGeneralTimingSpecification:Int,CustomStringConvertible
{
    case  GTS

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_DataTypeGeneralTimingSpecification?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_DataTypeGeneralTimingSpecification?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_DataTypeGeneralTimingSpecification(rawValue: i) 
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
            case  .GTS: return "GTS"
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


        
