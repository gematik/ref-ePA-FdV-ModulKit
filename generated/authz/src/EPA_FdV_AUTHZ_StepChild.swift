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
* specDomain: S11562 (C-0-T12206-A19563-S17926-S16360-S11562-cpt)
*/

public enum EPA_FdV_AUTHZ_StepChild:Int,CustomStringConvertible
{
    case  STPCHLD
    case  STPDAU
    case  STPSON

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_StepChild?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_StepChild?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_StepChild(rawValue: i) 
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
            case  .STPCHLD: return "STPCHLD"
            case  .STPDAU: return "STPDAU"
            case  .STPSON: return "STPSON"
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


        
