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
* abstDomain: A18593 (C-0-T18130-A18552-A18553-A18562-A18593-cpt)
*/

public enum EPA_FdV_AUTHZ_ChiwereWinnebago:Int,CustomStringConvertible
{
    case  x_x002D_IOW
    case  x_x002D_WIN

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ChiwereWinnebago?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ChiwereWinnebago?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ChiwereWinnebago(rawValue: i) 
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
            case  .x_x002D_IOW: return "x-IOW"
            case  .x_x002D_WIN: return "x-WIN"
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


        
