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
* abstDomain: A14594 (C-0-T14581-A16931-A14594-cpt)
*/

public enum EPA_FdV_AUTHZ_Flush:Int,CustomStringConvertible
{
    case  IVFLUSH

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Flush?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Flush?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Flush(rawValue: i) 
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
            case  .IVFLUSH: return "IVFLUSH"
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


        
