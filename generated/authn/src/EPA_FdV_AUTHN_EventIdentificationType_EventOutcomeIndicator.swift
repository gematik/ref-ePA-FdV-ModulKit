//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------


import Foundation


public enum EPA_FdV_AUTHN_EventIdentificationType_EventOutcomeIndicator:Int,CustomStringConvertible
{
    case  _0
    case  _4
    case  _8
    case  _12

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHN_EventIdentificationType_EventOutcomeIndicator?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHN_EventIdentificationType_EventOutcomeIndicator?
    {
        var i = 0
        while let item = EPA_FdV_AUTHN_EventIdentificationType_EventOutcomeIndicator(rawValue: i) 
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
            case  ._0: return "0"
            case  ._4: return "4"
            case  ._8: return "8"
            case  ._12: return "12"
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


        
