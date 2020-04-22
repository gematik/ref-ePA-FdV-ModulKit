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
* specDomain: S15993 (C-0-T15992-S15993-cpt)
*/

public enum EPA_FdV_AUTHZ_ManagedParticipationStatusNormal:Int,CustomStringConvertible
{
    case  normal
    case  active
    case  cancelled
    case  completed
    case  pending

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ManagedParticipationStatusNormal?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ManagedParticipationStatusNormal?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ManagedParticipationStatusNormal(rawValue: i) 
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
            case  .normal: return "normal"
            case  .active: return "active"
            case  .cancelled: return "cancelled"
            case  .completed: return "completed"
            case  .pending: return "pending"
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


        
