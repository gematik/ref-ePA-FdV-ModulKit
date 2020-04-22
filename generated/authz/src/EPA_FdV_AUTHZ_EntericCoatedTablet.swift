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
* specDomain: S14524 (C-0-T19651-A14411-A14412-A14484-S14506-S14515-S14516-S14524-cpt)
*/

public enum EPA_FdV_AUTHZ_EntericCoatedTablet:Int,CustomStringConvertible
{
    case  ECTAB
    case  ERECTAB

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_EntericCoatedTablet?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_EntericCoatedTablet?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_EntericCoatedTablet(rawValue: i) 
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
            case  .ECTAB: return "ECTAB"
            case  .ERECTAB: return "ERECTAB"
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


        
