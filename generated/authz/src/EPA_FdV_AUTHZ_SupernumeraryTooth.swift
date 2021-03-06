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
* abstDomain: A19343 (C-0-T16537-A16538-A19346-A19343-cpt)
*/

public enum EPA_FdV_AUTHZ_SupernumeraryTooth:Int,CustomStringConvertible
{
    case  TID10s
    case  TID11s
    case  TID12s
    case  TID13s
    case  TID14s
    case  TID15s
    case  TID16s
    case  TID17s
    case  TID18s
    case  TID19s
    case  TID1s
    case  TID20s
    case  TID21s
    case  TID22s
    case  TID23s
    case  TID24s
    case  TID25s
    case  TID26s
    case  TID27s
    case  TID28s
    case  TID29s
    case  TID2s
    case  TID30s
    case  TID31s
    case  TID32s
    case  TID3s
    case  TID4s
    case  TID5s
    case  TID6s
    case  TID7s
    case  TID8s
    case  TID9s
    case  TIDAs
    case  TIDBs
    case  TIDCs
    case  TIDDs
    case  TIDEs
    case  TIDFs
    case  TIDGs
    case  TIDHs
    case  TIDIs
    case  TIDJs
    case  TIDKs
    case  TIDLs
    case  TIDMs
    case  TIDNs
    case  TIDOs
    case  TIDPs
    case  TIDQs
    case  TIDRs
    case  TIDSs
    case  TIDTs

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_SupernumeraryTooth?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_SupernumeraryTooth?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_SupernumeraryTooth(rawValue: i) 
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
            case  .TID10s: return "TID10s"
            case  .TID11s: return "TID11s"
            case  .TID12s: return "TID12s"
            case  .TID13s: return "TID13s"
            case  .TID14s: return "TID14s"
            case  .TID15s: return "TID15s"
            case  .TID16s: return "TID16s"
            case  .TID17s: return "TID17s"
            case  .TID18s: return "TID18s"
            case  .TID19s: return "TID19s"
            case  .TID1s: return "TID1s"
            case  .TID20s: return "TID20s"
            case  .TID21s: return "TID21s"
            case  .TID22s: return "TID22s"
            case  .TID23s: return "TID23s"
            case  .TID24s: return "TID24s"
            case  .TID25s: return "TID25s"
            case  .TID26s: return "TID26s"
            case  .TID27s: return "TID27s"
            case  .TID28s: return "TID28s"
            case  .TID29s: return "TID29s"
            case  .TID2s: return "TID2s"
            case  .TID30s: return "TID30s"
            case  .TID31s: return "TID31s"
            case  .TID32s: return "TID32s"
            case  .TID3s: return "TID3s"
            case  .TID4s: return "TID4s"
            case  .TID5s: return "TID5s"
            case  .TID6s: return "TID6s"
            case  .TID7s: return "TID7s"
            case  .TID8s: return "TID8s"
            case  .TID9s: return "TID9s"
            case  .TIDAs: return "TIDAs"
            case  .TIDBs: return "TIDBs"
            case  .TIDCs: return "TIDCs"
            case  .TIDDs: return "TIDDs"
            case  .TIDEs: return "TIDEs"
            case  .TIDFs: return "TIDFs"
            case  .TIDGs: return "TIDGs"
            case  .TIDHs: return "TIDHs"
            case  .TIDIs: return "TIDIs"
            case  .TIDJs: return "TIDJs"
            case  .TIDKs: return "TIDKs"
            case  .TIDLs: return "TIDLs"
            case  .TIDMs: return "TIDMs"
            case  .TIDNs: return "TIDNs"
            case  .TIDOs: return "TIDOs"
            case  .TIDPs: return "TIDPs"
            case  .TIDQs: return "TIDQs"
            case  .TIDRs: return "TIDRs"
            case  .TIDSs: return "TIDSs"
            case  .TIDTs: return "TIDTs"
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


        
