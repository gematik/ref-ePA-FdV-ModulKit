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
* abstDomain: A13579 (C-0-T13129-A13130-A13578-A13579-cpt)
*/

public enum EPA_FdV_AUTHZ_OtherPhysicianOsteopathHIPAA:Int,CustomStringConvertible
{
    case  _353BL0002N
    case  _353BS0900N

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_OtherPhysicianOsteopathHIPAA?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_OtherPhysicianOsteopathHIPAA?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_OtherPhysicianOsteopathHIPAA(rawValue: i) 
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
            case  ._353BL0002N: return "353BL0002N"
            case  ._353BS0900N: return "353BS0900N"
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


        
