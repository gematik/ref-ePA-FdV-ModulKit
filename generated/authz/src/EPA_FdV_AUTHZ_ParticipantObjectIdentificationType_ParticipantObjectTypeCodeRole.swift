//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------


import Foundation


public enum EPA_FdV_AUTHZ_ParticipantObjectIdentificationType_ParticipantObjectTypeCodeRole:Int,CustomStringConvertible
{
    case  _1
    case  _2
    case  _3
    case  _4
    case  _5
    case  _6
    case  _7
    case  _8
    case  _9
    case  _10
    case  _11
    case  _12
    case  _13
    case  _14
    case  _15
    case  _16
    case  _17
    case  _18
    case  _19
    case  _20
    case  _21
    case  _22
    case  _23
    case  _24

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ParticipantObjectIdentificationType_ParticipantObjectTypeCodeRole?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ParticipantObjectIdentificationType_ParticipantObjectTypeCodeRole?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ParticipantObjectIdentificationType_ParticipantObjectTypeCodeRole(rawValue: i) 
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
            case  ._1: return "1"
            case  ._2: return "2"
            case  ._3: return "3"
            case  ._4: return "4"
            case  ._5: return "5"
            case  ._6: return "6"
            case  ._7: return "7"
            case  ._8: return "8"
            case  ._9: return "9"
            case  ._10: return "10"
            case  ._11: return "11"
            case  ._12: return "12"
            case  ._13: return "13"
            case  ._14: return "14"
            case  ._15: return "15"
            case  ._16: return "16"
            case  ._17: return "17"
            case  ._18: return "18"
            case  ._19: return "19"
            case  ._20: return "20"
            case  ._21: return "21"
            case  ._22: return "22"
            case  ._23: return "23"
            case  ._24: return "24"
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


        
