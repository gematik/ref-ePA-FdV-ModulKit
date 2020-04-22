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
* specDomain: S15936 (C-0-T15933-S15936-cpt)
*/

public enum EPA_FdV_AUTHZ_ActStatusNormal:Int,CustomStringConvertible
{
    case  normal
    case  aborted
    case  active
    case  cancelled
    case  completed
    case  held
    case  _new
    case  suspended

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActStatusNormal?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActStatusNormal?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActStatusNormal(rawValue: i) 
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
            case  .aborted: return "aborted"
            case  .active: return "active"
            case  .cancelled: return "cancelled"
            case  .completed: return "completed"
            case  .held: return "held"
            case  ._new: return "new"
            case  .suspended: return "suspended"
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


        
