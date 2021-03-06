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
* specDomain: S20126 (C-0-T19465-S20096-S20126-cpt)
*/

public enum EPA_FdV_AUTHZ_InternalMedicineProviderCodes:Int,CustomStringConvertible
{
    case  _207R00000X
    case  _207RA0401X
    case  _207RA0000X
    case  _207RA0201X
    case  _207RC0000X
    case  _207RI0001X
    case  _207RC0001X
    case  _207RC0200X
    case  _207RE0101X
    case  _207RG0100X
    case  _207RG0300X
    case  _207RH0000X
    case  _207RH0003X
    case  _207RI0008X
    case  _207RI0200X
    case  _207RI0011X
    case  _207RM1200X
    case  _207RX0202X
    case  _207RN0300X
    case  _207RP1001X
    case  _207RR0500X
    case  _207RS0010X

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_InternalMedicineProviderCodes?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_InternalMedicineProviderCodes?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_InternalMedicineProviderCodes(rawValue: i) 
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
            case  ._207R00000X: return "207R00000X"
            case  ._207RA0401X: return "207RA0401X"
            case  ._207RA0000X: return "207RA0000X"
            case  ._207RA0201X: return "207RA0201X"
            case  ._207RC0000X: return "207RC0000X"
            case  ._207RI0001X: return "207RI0001X"
            case  ._207RC0001X: return "207RC0001X"
            case  ._207RC0200X: return "207RC0200X"
            case  ._207RE0101X: return "207RE0101X"
            case  ._207RG0100X: return "207RG0100X"
            case  ._207RG0300X: return "207RG0300X"
            case  ._207RH0000X: return "207RH0000X"
            case  ._207RH0003X: return "207RH0003X"
            case  ._207RI0008X: return "207RI0008X"
            case  ._207RI0200X: return "207RI0200X"
            case  ._207RI0011X: return "207RI0011X"
            case  ._207RM1200X: return "207RM1200X"
            case  ._207RX0202X: return "207RX0202X"
            case  ._207RN0300X: return "207RN0300X"
            case  ._207RP1001X: return "207RP1001X"
            case  ._207RR0500X: return "207RR0500X"
            case  ._207RS0010X: return "207RS0010X"
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


        
