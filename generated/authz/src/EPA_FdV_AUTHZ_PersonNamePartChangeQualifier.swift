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
* abstDomain: A10660 (C-0-T15888-A10659-A10660-cpt)
*/

public enum EPA_FdV_AUTHZ_PersonNamePartChangeQualifier:Int,CustomStringConvertible
{
    case  AD
    case  BR
    case  SP

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_PersonNamePartChangeQualifier?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_PersonNamePartChangeQualifier?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_PersonNamePartChangeQualifier(rawValue: i) 
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
            case  .AD: return "AD"
            case  .BR: return "BR"
            case  .SP: return "SP"
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


        
