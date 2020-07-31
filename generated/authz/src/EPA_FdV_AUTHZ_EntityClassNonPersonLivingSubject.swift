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
* specDomain: S11621 (C-0-T10882-S13922-S10884-S11621-cpt)
*/

public enum EPA_FdV_AUTHZ_EntityClassNonPersonLivingSubject:Int,CustomStringConvertible
{
    case  NLIV
    case  ANM
    case  MIC
    case  PLNT

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_EntityClassNonPersonLivingSubject?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_EntityClassNonPersonLivingSubject?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_EntityClassNonPersonLivingSubject(rawValue: i) 
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
            case  .NLIV: return "NLIV"
            case  .ANM: return "ANM"
            case  .MIC: return "MIC"
            case  .PLNT: return "PLNT"
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


        