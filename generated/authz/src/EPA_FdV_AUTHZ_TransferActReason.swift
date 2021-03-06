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
* abstDomain: A15983 (C-0-T14878-A15983-cpt)
*/

public enum EPA_FdV_AUTHZ_TransferActReason:Int,CustomStringConvertible
{
    case  ER
    case  RQ

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_TransferActReason?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_TransferActReason?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_TransferActReason(rawValue: i) 
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
            case  .ER: return "ER"
            case  .RQ: return "RQ"
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


        
