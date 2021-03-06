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
* vocSet: T10083 (C-0-T10083-cpt)
*/

public enum EPA_FdV_AUTHZ_HL7DefinedRoseProperty:Int,CustomStringConvertible
{
    case  ApplicationRoleI
    case  Cardinality
    case  MayRepeat
    case  InstancedDTsymbo
    case  DTsymbol
    case  DevelopingCommit
    case  Organization
    case  EndState
    case  HMD
    case  zhxID
    case  ID
    case  DeleteFromMIM
    case  MIM_id
    case  MandatoryInclusi
    case  MsgID
    case  ModelDate
    case  ModelDescription
    case  ModelID
    case  ModelName
    case  ModelVersion
    case  IsPrimitiveDT
    case  RcvResp
    case  IsReferenceDT
    case  RespComm_id
    case  StartState
    case  StateAttribute
    case  StateTransition
    case  IsSubjectClass
    case  V23_Fields
    case  V23_Datatype
    case  Vocab_domain
    case  Vocab_strength

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_HL7DefinedRoseProperty?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_HL7DefinedRoseProperty?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_HL7DefinedRoseProperty(rawValue: i) 
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
            case  .ApplicationRoleI: return "ApplicationRoleI"
            case  .Cardinality: return "Cardinality"
            case  .MayRepeat: return "MayRepeat"
            case  .InstancedDTsymbo: return "InstancedDTsymbo"
            case  .DTsymbol: return "DTsymbol"
            case  .DevelopingCommit: return "DevelopingCommit"
            case  .Organization: return "Organization"
            case  .EndState: return "EndState"
            case  .HMD: return "HMD"
            case  .zhxID: return "zhxID"
            case  .ID: return "ID"
            case  .DeleteFromMIM: return "DeleteFromMIM"
            case  .MIM_id: return "MIM_id"
            case  .MandatoryInclusi: return "MandatoryInclusi"
            case  .MsgID: return "MsgID"
            case  .ModelDate: return "ModelDate"
            case  .ModelDescription: return "ModelDescription"
            case  .ModelID: return "ModelID"
            case  .ModelName: return "ModelName"
            case  .ModelVersion: return "ModelVersion"
            case  .IsPrimitiveDT: return "IsPrimitiveDT"
            case  .RcvResp: return "RcvResp"
            case  .IsReferenceDT: return "IsReferenceDT"
            case  .RespComm_id: return "RespComm_id"
            case  .StartState: return "StartState"
            case  .StateAttribute: return "StateAttribute"
            case  .StateTransition: return "StateTransition"
            case  .IsSubjectClass: return "IsSubjectClass"
            case  .V23_Fields: return "V23_Fields"
            case  .V23_Datatype: return "V23_Datatype"
            case  .Vocab_domain: return "Vocab_domain"
            case  .Vocab_strength: return "Vocab_strength"
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


        
