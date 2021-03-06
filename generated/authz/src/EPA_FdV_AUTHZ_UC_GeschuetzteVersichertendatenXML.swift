//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

	/**
	* Es handelt sich um eine Pflichtangabe fuer GKV. 
	* Hinweis: Dieses Datenfeld ist nicht frei auslesbar, sondern nur berechtigten Personen zugaenglich.
	*/
    var  Zuzahlungsstatus:EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_Zuzahlungsstatus=EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_Zuzahlungsstatus()

	/**
	* Gibt die Zugehoerigkeit des Versicherten zu einer besonderen Personengruppe an. Die Kennzeichnung erfolgt gemaess der Schluesseltabelle.
	* 4 = BSHG (Bundessozialhilfegesetz) § 264 SGB V, 
	* 6 = BVG (Gesetz über die Versorgung der Opfer des Krieges), 
	* 7 = SVA-Kennzeichnung für zwischenstaatliches Krankenversicherungsrecht: - Personen mit Wohnsitz im
	* Inland, Abrechnung nach Aufwand, 
	* 8 = SVA-Kennzeichnung, pauschal,
	* 9 = Empfänger von Gesundheitsleistungen nach §§ 4 und 6 des Asylbewerberleistungsgesetzes (AsylbLG).
	*/
    var  BesonderePersonengruppe:NSNumber?

	/**
	* Gibt die Teilnahme des Versicherten an einem Disease Management Program an. Die Kennzeichnung erfolgt gemaess der Schluesseltabelle.
	* 1 = Diabetes mellitus Typ 2, 
	* 2 = Brustkrebs, 
	* 3 = Koronare Herzkrankheit, 
	* 4 = Diabetes mellitus Typ 1, 
	* 5 = Asthma bronchiale, 
	* 6 = COPD (chronic obstructive pulmonary disease), 
	* 7 = Chronische Herzinsuffizienz, 
	* 8 = Depression, 
	* 9 = Rückenschmerz
	* Das DMP-Kennzeichen findet derzeit aufgrund bilateraler vertraglicher Verpflichtungen von einzelnen Kostenträgern und Leistungserbringern noch Verwendung. Zur Abbildung dieser Verträge zu Disease-Management-Programmen kann das DMP-Kennzeichen weiterhin gemäß §291 Abs. 2a Satz 3 SGB V auf der eGK gespeichert werden, da es sich dabei um Angaben nach § 53 SGB V bzw. Angaben zum Nachweis von zusätzlichen Vertragsverhältnissen handelt.
	*/
    var  DMP_Kennzeichnung:NSNumber?

    var  Selektivvertraege:EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_Selektivvertraege=EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_Selektivvertraege()

    var  RuhenderLeistungsanspruch:EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_RuhenderLeistungsanspruch?

    var  CDM_VERSION:String=""

    public required override init()
    {
        super.init()
    }
    public func loadWithXml(__node: DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        __source=__node;
        for i :UInt in 0 ..< __node.childCount
        {
            let node=__node.child(at:i)
            if node?.kind==UInt(XMLElementKind)
            {
                let __node=node as! DDXMLElement
                if loadProperty(__node:__node, __request:__request) == false
                {
                }
            }
        }
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"CDM_VERSION", url:"")
        {
            self.CDM_VERSION = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"CDM_VERSION", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        
            
        let __ZuzahlungsstatusItemElement=__request.writeElement(obj: Zuzahlungsstatus, type:EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_Zuzahlungsstatus.self, name:"Zuzahlungsstatus", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:false)
        if __ZuzahlungsstatusItemElement != nil
        {
            self.Zuzahlungsstatus.serialize(__parent: __ZuzahlungsstatusItemElement!, __request: __request);
        }
            
        let __BesonderePersonengruppeItemElement=__request.writeElement(obj: BesonderePersonengruppe, type:NSNumber.self, name:"BesonderePersonengruppe", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:true)
        if __BesonderePersonengruppeItemElement != nil
        {
            __BesonderePersonengruppeItemElement!.stringValue = EPA_FdV_AUTHZ_Helper.getStringFromNumber(number: self.BesonderePersonengruppe!);
        }
            
        let __DMP_KennzeichnungItemElement=__request.writeElement(obj: DMP_Kennzeichnung, type:NSNumber.self, name:"DMP_Kennzeichnung", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:true)
        if __DMP_KennzeichnungItemElement != nil
        {
            __DMP_KennzeichnungItemElement!.stringValue = EPA_FdV_AUTHZ_Helper.getStringFromNumber(number: self.DMP_Kennzeichnung!);
        }
            
        let __SelektivvertraegeItemElement=__request.writeElement(obj: Selektivvertraege, type:EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_Selektivvertraege.self, name:"Selektivvertraege", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:false)
        if __SelektivvertraegeItemElement != nil
        {
            self.Selektivvertraege.serialize(__parent: __SelektivvertraegeItemElement!, __request: __request);
        }
            
        let __RuhenderLeistungsanspruchItemElement=__request.writeElement(obj: RuhenderLeistungsanspruch, type:EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_RuhenderLeistungsanspruch.self, name:"RuhenderLeistungsanspruch", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:true)
        if __RuhenderLeistungsanspruchItemElement != nil
        {
            self.RuhenderLeistungsanspruch!.serialize(__parent: __RuhenderLeistungsanspruchItemElement!, __request: __request);
        }
            
        let __CDM_VERSIONItemElement=__request.addAttribute(name: "CDM_VERSION", URI:"", stringValue:"", element:__parent)
        __CDM_VERSIONItemElement.stringValue = self.CDM_VERSION;    

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Zuzahlungsstatus"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Zuzahlungsstatus")
            {
                self.Zuzahlungsstatus = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_Zuzahlungsstatus.self) as! EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_Zuzahlungsstatus
            }
            return true;
        }
        if __node.localName=="BesonderePersonengruppe"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "BesonderePersonengruppe")
            {
                self.BesonderePersonengruppe = EPA_FdV_AUTHZ_Helper.getNumber(stringNumber: __node.stringValue, isDecimal:false)!
            }
            return true;
        }
        if __node.localName=="DMP_Kennzeichnung"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "DMP_Kennzeichnung")
            {
                self.DMP_Kennzeichnung = EPA_FdV_AUTHZ_Helper.getNumber(stringNumber: __node.stringValue, isDecimal:false)!
            }
            return true;
        }
        if __node.localName=="Selektivvertraege"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Selektivvertraege")
            {
                self.Selektivvertraege = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_Selektivvertraege.self) as! EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_Selektivvertraege
            }
            return true;
        }
        if __node.localName=="RuhenderLeistungsanspruch"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "RuhenderLeistungsanspruch")
            {
                self.RuhenderLeistungsanspruch = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_RuhenderLeistungsanspruch.self) as? EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_RuhenderLeistungsanspruch
            }
            return true;
        }
        if __node.localName=="CDM_VERSION"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "CDM_VERSION")
            {
                self.CDM_VERSION = __node.stringValue!
            }
            return true;
        }
        return false
    }
    public func getOriginalXmlSource() ->DDXMLNode? 
    {
        return __source
    }
}