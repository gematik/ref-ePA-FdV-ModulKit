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
* abstDomain: A17003 (C-0-T14581-A16931-A17003-cpt)
*/

public enum EPA_FdV_AUTHZ_SuppositoryRoute:Int,CustomStringConvertible
{
    case  URETHSUP

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SuppositoryRoute?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SuppositoryRoute?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SuppositoryRoute(rawValue: i) 
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
            case  .URETHSUP: return "URETHSUP"
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


        
