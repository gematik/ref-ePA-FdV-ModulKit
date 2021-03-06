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
* specDomain: S15848 (C-0-T15836-S15837-S15848-cpt)
*/

public enum EPA_FdV_AUTHZ_EthnicityHispanicMexican:Int,CustomStringConvertible
{
    case  _2148_x002D_5
    case  _2151_x002D_9
    case  _2152_x002D_7
    case  _2149_x002D_3
    case  _2153_x002D_5
    case  _2150_x002D_1

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_EthnicityHispanicMexican?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_EthnicityHispanicMexican?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_EthnicityHispanicMexican(rawValue: i) 
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
            case  ._2148_x002D_5: return "2148-5"
            case  ._2151_x002D_9: return "2151-9"
            case  ._2152_x002D_7: return "2152-7"
            case  ._2149_x002D_3: return "2149-3"
            case  ._2153_x002D_5: return "2153-5"
            case  ._2150_x002D_1: return "2150-1"
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


        
