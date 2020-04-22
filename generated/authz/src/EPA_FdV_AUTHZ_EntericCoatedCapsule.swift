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
* specDomain: S14509 (C-0-T19651-A14411-A14412-A14484-S14506-S14507-S14508-S14509-cpt)
*/

public enum EPA_FdV_AUTHZ_EntericCoatedCapsule:Int,CustomStringConvertible
{
    case  ENTCAP
    case  ERENTCAP

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_EntericCoatedCapsule?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_EntericCoatedCapsule?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_EntericCoatedCapsule(rawValue: i) 
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
            case  .ENTCAP: return "ENTCAP"
            case  .ERENTCAP: return "ERENTCAP"
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


        
