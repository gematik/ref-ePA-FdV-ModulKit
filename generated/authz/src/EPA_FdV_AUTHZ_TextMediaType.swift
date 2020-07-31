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
* abstDomain: A14825 (C-0-T14824-A14825-cpt)
*/

public enum EPA_FdV_AUTHZ_TextMediaType:Int,CustomStringConvertible
{
    case  text_x002F_x_x002D_hl7_x002D_ft
    case  text_x002F_html
    case  text_x002F_plain
    case  text_x002F_rtf
    case  text_x002F_sgml
    case  text_x002F_xml

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_TextMediaType?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_TextMediaType?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_TextMediaType(rawValue: i) 
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
            case  .text_x002F_x_x002D_hl7_x002D_ft: return "text/x-hl7-ft"
            case  .text_x002F_html: return "text/html"
            case  .text_x002F_plain: return "text/plain"
            case  .text_x002F_rtf: return "text/rtf"
            case  .text_x002F_sgml: return "text/sgml"
            case  .text_x002F_xml: return "text/xml"
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


        