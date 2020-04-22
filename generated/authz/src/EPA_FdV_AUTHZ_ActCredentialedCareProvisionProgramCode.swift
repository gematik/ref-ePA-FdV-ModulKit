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
* abstDomain: A19792 (C-0-T13953-A19789-A19790-A19792-cpt)
*/

public enum EPA_FdV_AUTHZ_ActCredentialedCareProvisionProgramCode:Int,CustomStringConvertible
{
    case  AAMC
    case  AALC
    case  ABHC
    case  ACAC
    case  AHOC
    case  ACHC
    case  ALTC
    case  AOSC
    case  CACS
    case  CAMI
    case  CAST
    case  CBAR
    case  CCAR
    case  COPD
    case  CCAD
    case  CDEP
    case  CDIA
    case  CDGD
    case  CEPI
    case  CFEL
    case  CHFC
    case  CHRO
    case  CHYP
    case  CMIH
    case  CMSC
    case  CONC
    case  CORT
    case  COJR
    case  CPAD
    case  CPND
    case  CPST
    case  CSIC
    case  CSLD
    case  CSPT
    case  CSDM
    case  CTBU
    case  CVDC
    case  CWOH
    case  CWMA

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_ActCredentialedCareProvisionProgramCode?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_ActCredentialedCareProvisionProgramCode?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_ActCredentialedCareProvisionProgramCode(rawValue: i) 
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
            case  .AAMC: return "AAMC"
            case  .AALC: return "AALC"
            case  .ABHC: return "ABHC"
            case  .ACAC: return "ACAC"
            case  .AHOC: return "AHOC"
            case  .ACHC: return "ACHC"
            case  .ALTC: return "ALTC"
            case  .AOSC: return "AOSC"
            case  .CACS: return "CACS"
            case  .CAMI: return "CAMI"
            case  .CAST: return "CAST"
            case  .CBAR: return "CBAR"
            case  .CCAR: return "CCAR"
            case  .COPD: return "COPD"
            case  .CCAD: return "CCAD"
            case  .CDEP: return "CDEP"
            case  .CDIA: return "CDIA"
            case  .CDGD: return "CDGD"
            case  .CEPI: return "CEPI"
            case  .CFEL: return "CFEL"
            case  .CHFC: return "CHFC"
            case  .CHRO: return "CHRO"
            case  .CHYP: return "CHYP"
            case  .CMIH: return "CMIH"
            case  .CMSC: return "CMSC"
            case  .CONC: return "CONC"
            case  .CORT: return "CORT"
            case  .COJR: return "COJR"
            case  .CPAD: return "CPAD"
            case  .CPND: return "CPND"
            case  .CPST: return "CPST"
            case  .CSIC: return "CSIC"
            case  .CSLD: return "CSLD"
            case  .CSPT: return "CSPT"
            case  .CSDM: return "CSDM"
            case  .CTBU: return "CTBU"
            case  .CVDC: return "CVDC"
            case  .CWOH: return "CWOH"
            case  .CWMA: return "CWMA"
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


        
