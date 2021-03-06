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
* vocSet: T19361 (C-0-T19361-cpt)
*/

public enum EPA_FdV_AUTHZ_ConceptPropertyId:Int,CustomStringConvertible
{
    case  OID
    case  _ValueSetPropertyId
    case  appliesTo
    case  howApplies
    case  inverseRelationship
    case  openIssue

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ConceptPropertyId?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ConceptPropertyId?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ConceptPropertyId(rawValue: i) 
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
            case  .OID: return "OID"
            case  ._ValueSetPropertyId: return "_ValueSetPropertyId"
            case  .appliesTo: return "appliesTo"
            case  .howApplies: return "howApplies"
            case  .inverseRelationship: return "inverseRelationship"
            case  .openIssue: return "openIssue"
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


        
