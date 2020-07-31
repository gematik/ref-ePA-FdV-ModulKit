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
* abstDomain: A18282 (C-0-T18130-A18241-A18274-A18275-A18282-cpt)
*/

public enum EPA_FdV_AUTHZ_River:Int,CustomStringConvertible
{
    case  x_x002D_MRC
    case  x_x002D_MOV
    case  x_x002D_YUM

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_River?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_River?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_River(rawValue: i) 
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
            case  .x_x002D_MRC: return "x-MRC"
            case  .x_x002D_MOV: return "x-MOV"
            case  .x_x002D_YUM: return "x-YUM"
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


        