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
* vocSet: T13988 (C-0-T13988-cpt)
*/

public enum EPA_FdV_AUTHZ_EntityHandling:Int,CustomStringConvertible
{
    case  AMB
    case  C37
    case  CAMB
    case  CFRZ
    case  CREF
    case  DFRZ
    case  MTLF
    case  CATM
    case  PRTL
    case  REF
    case  SBU
    case  UFRZ
    case  PSA
    case  DRY
    case  FRZ
    case  NTR
    case  PSO
    case  UPR

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_EntityHandling?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_EntityHandling?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_EntityHandling(rawValue: i) 
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
            case  .AMB: return "AMB"
            case  .C37: return "C37"
            case  .CAMB: return "CAMB"
            case  .CFRZ: return "CFRZ"
            case  .CREF: return "CREF"
            case  .DFRZ: return "DFRZ"
            case  .MTLF: return "MTLF"
            case  .CATM: return "CATM"
            case  .PRTL: return "PRTL"
            case  .REF: return "REF"
            case  .SBU: return "SBU"
            case  .UFRZ: return "UFRZ"
            case  .PSA: return "PSA"
            case  .DRY: return "DRY"
            case  .FRZ: return "FRZ"
            case  .NTR: return "NTR"
            case  .PSO: return "PSO"
            case  .UPR: return "UPR"
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


        
