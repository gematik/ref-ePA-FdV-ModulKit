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
* abstDomain: A16742 (C-0-T10196-A16742-cpt)
*/

public enum EPA_FdV_AUTHZ_x_ActMoodIntentEvent:Int,CustomStringConvertible
{
    case  EVN

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_x_ActMoodIntentEvent?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_x_ActMoodIntentEvent?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_x_ActMoodIntentEvent(rawValue: i) 
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
            case  .EVN: return "EVN"
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


        
