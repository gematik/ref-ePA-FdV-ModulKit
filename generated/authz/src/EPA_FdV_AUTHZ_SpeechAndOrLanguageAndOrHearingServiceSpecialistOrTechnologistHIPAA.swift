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
* abstDomain: A13640 (C-0-T13129-A13130-A13634-A13640-cpt)
*/

public enum EPA_FdV_AUTHZ_SpeechAndOrLanguageAndOrHearingServiceSpecialistOrTechnologistHIPAA:Int,CustomStringConvertible
{
    case  _2355A2700N
    case  _2355S0801N

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SpeechAndOrLanguageAndOrHearingServiceSpecialistOrTechnologistHIPAA?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SpeechAndOrLanguageAndOrHearingServiceSpecialistOrTechnologistHIPAA?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SpeechAndOrLanguageAndOrHearingServiceSpecialistOrTechnologistHIPAA(rawValue: i) 
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
            case  ._2355A2700N: return "2355A2700N"
            case  ._2355S0801N: return "2355S0801N"
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


        