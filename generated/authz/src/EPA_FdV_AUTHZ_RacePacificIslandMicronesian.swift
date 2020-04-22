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
* specDomain: S15794 (C-0-T14914-S15787-S15794-cpt)
*/

public enum EPA_FdV_AUTHZ_RacePacificIslandMicronesian:Int,CustomStringConvertible
{
    case  _2085_x002D_9
    case  _2092_x002D_5
    case  _2088_x002D_3
    case  _2097_x002D_4
    case  _2087_x002D_5
    case  _2086_x002D_7
    case  _2096_x002D_6
    case  _2093_x002D_3
    case  _2089_x002D_1
    case  _2090_x002D_9
    case  _2091_x002D_7
    case  _2094_x002D_1
    case  _2095_x002D_8
    case  _2098_x002D_2

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_RacePacificIslandMicronesian?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_RacePacificIslandMicronesian?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_RacePacificIslandMicronesian(rawValue: i) 
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
            case  ._2085_x002D_9: return "2085-9"
            case  ._2092_x002D_5: return "2092-5"
            case  ._2088_x002D_3: return "2088-3"
            case  ._2097_x002D_4: return "2097-4"
            case  ._2087_x002D_5: return "2087-5"
            case  ._2086_x002D_7: return "2086-7"
            case  ._2096_x002D_6: return "2096-6"
            case  ._2093_x002D_3: return "2093-3"
            case  ._2089_x002D_1: return "2089-1"
            case  ._2090_x002D_9: return "2090-9"
            case  ._2091_x002D_7: return "2091-7"
            case  ._2094_x002D_1: return "2094-1"
            case  ._2095_x002D_8: return "2095-8"
            case  ._2098_x002D_2: return "2098-2"
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


        
