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
* abstDomain: A10024 (C-0-T10018-A10024-cpt)
*/

public enum EPA_FdV_AUTHZ_SetUpdateMode:Int,CustomStringConvertible
{
    case  ESA
    case  ESAC
    case  ESC
    case  ESD

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SetUpdateMode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SetUpdateMode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SetUpdateMode(rawValue: i) 
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
            case  .ESA: return "ESA"
            case  .ESAC: return "ESAC"
            case  .ESC: return "ESC"
            case  .ESD: return "ESD"
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


        