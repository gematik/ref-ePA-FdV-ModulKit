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
* vocSet: T17388 (C-0-T17388-cpt)
*/

public enum EPA_FdV_AUTHZ_Currency:Int,CustomStringConvertible
{
    case  ARS
    case  AUD
    case  THB
    case  BRL
    case  CAD
    case  DEM
    case  EUR
    case  FRF
    case  INR
    case  TRL
    case  FIM
    case  MXN
    case  NLG
    case  NZD
    case  PHP
    case  GBP
    case  ZAR
    case  RUR
    case  ILS
    case  ESP
    case  CHF
    case  TWD
    case  USD
    case  CLF
    case  KRW
    case  JPY
    case  CNY

    static func createWithXml(node:DDXMLNode) -> EPA_FdV_AUTHZ_Currency?
    {
        return createWithString(value: node.stringValue!)
    }

    static func createWithString(value:String) -> EPA_FdV_AUTHZ_Currency?
    {
        var i = 0
        while let item = EPA_FdV_AUTHZ_Currency(rawValue: i) 
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
            case  .ARS: return "ARS"
            case  .AUD: return "AUD"
            case  .THB: return "THB"
            case  .BRL: return "BRL"
            case  .CAD: return "CAD"
            case  .DEM: return "DEM"
            case  .EUR: return "EUR"
            case  .FRF: return "FRF"
            case  .INR: return "INR"
            case  .TRL: return "TRL"
            case  .FIM: return "FIM"
            case  .MXN: return "MXN"
            case  .NLG: return "NLG"
            case  .NZD: return "NZD"
            case  .PHP: return "PHP"
            case  .GBP: return "GBP"
            case  .ZAR: return "ZAR"
            case  .RUR: return "RUR"
            case  .ILS: return "ILS"
            case  .ESP: return "ESP"
            case  .CHF: return "CHF"
            case  .TWD: return "TWD"
            case  .USD: return "USD"
            case  .CLF: return "CLF"
            case  .KRW: return "KRW"
            case  .JPY: return "JPY"
            case  .CNY: return "CNY"
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


        