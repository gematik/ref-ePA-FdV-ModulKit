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
* vocSet: T357 (C-0-T357-cpt)
*/

public enum EPA_FdV_AUTHZ_MessageCondition:Int,CustomStringConvertible
{
    case  _207
    case  _206
    case  _102
    case  _205
    case  _0
    case  _101
    case  _100
    case  _103
    case  _204
    case  _202
    case  _203
    case  _201
    case  _200

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_MessageCondition?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_MessageCondition?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_MessageCondition(rawValue: i) 
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
            case  ._207: return "207"
            case  ._206: return "206"
            case  ._102: return "102"
            case  ._205: return "205"
            case  ._0: return "0"
            case  ._101: return "101"
            case  ._100: return "100"
            case  ._103: return "103"
            case  ._204: return "204"
            case  ._202: return "202"
            case  ._203: return "203"
            case  ._201: return "201"
            case  ._200: return "200"
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


        
