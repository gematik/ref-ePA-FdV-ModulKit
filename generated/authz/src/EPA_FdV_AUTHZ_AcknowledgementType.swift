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
* vocSet: T8 (C-0-T8-cpt)
*/

public enum EPA_FdV_AUTHZ_AcknowledgementType:Int,CustomStringConvertible
{
    case  CA
    case  CE
    case  CR
    case  AA
    case  AE
    case  AR

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_AcknowledgementType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_AcknowledgementType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_AcknowledgementType(rawValue: i) 
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
            case  .CA: return "CA"
            case  .CE: return "CE"
            case  .CR: return "CR"
            case  .AA: return "AA"
            case  .AE: return "AE"
            case  .AR: return "AR"
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


        
