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
* abstDomain: A14687 (C-0-T14581-A16931-A14687-cpt)
*/

public enum EPA_FdV_AUTHZ_Insertion:Int,CustomStringConvertible
{
    case  CERVINS
    case  IOSURGINS
    case  IU
    case  LPINS
    case  PR
    case  SQSURGINS
    case  URETHINS
    case  VAGINSI

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Insertion?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Insertion?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Insertion(rawValue: i) 
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
            case  .CERVINS: return "CERVINS"
            case  .IOSURGINS: return "IOSURGINS"
            case  .IU: return "IU"
            case  .LPINS: return "LPINS"
            case  .PR: return "PR"
            case  .SQSURGINS: return "SQSURGINS"
            case  .URETHINS: return "URETHINS"
            case  .VAGINSI: return "VAGINSI"
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


        
