//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_UC_PersoenlicheVersichertendatenXML_Versicherter_Person_StrassenAdresse : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

	/**
	* Gibt die Postleitzahl der Strassen- oder Postfachadresse an. Die Befüllung des Feldes Postleitzahl erfolgt gemäß den Festlegungen der DEÜV. In Verbindung mit dem Wohnsitzländercode "D" für Deutschland MUSS die
	* Postleitzahl 5-stellig numerisch sein. Soweit Angaben zur Adresse und zum Postfach gemacht werden, MUSS die Postleitzahl zu beiden Adressdaten vorhanden sein. Bei Anschriften ohne Postleitzahl wird das Feld nicht verwendet.
	*/
    var  Postleitzahl:String?

	/**
	* Gibt den Ort zur Strassen- und oder Postfachadresse an. 
	* Soweit Angaben zur Adresse und zum Postfach gemacht werden, MUSS der Ort zu beiden Adressdaten vorhanden sein.
	* Abweichung zur Festlegung in DEÜV (Feldlänge = 34)
	*/
    var  Ort:String=""

    var  Land:EPA_FdV_AUTHZ_LandType=EPA_FdV_AUTHZ_LandType()

	/**
	* Gibt den Namen der Strasse an.
	* Wenn die Hausnummer nicht separat abgelegt werden kann, ist es zulässig, die Hausnummer in das Feld Straße zu übernehmen.
	* Anlage 9.4 (Datensätze und Datenbausteine sowie Fehlerkatalog) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp
	*/
    var  Strasse:String?

	/**
	* Gibt die Hausnummer in der Strasse der Person an.
	* Pflichtangabe soweit bekannt, wenn die Hausnummer nicht separat abgelegt werden kann, ist es zulässig, die Hausnummer in das Feld Straße zu übernehmen. 
	* Anlage 9.4 (Datensätze und Datenbausteine sowie Fehlerkatalog) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp
	*/
    var  Hausnummer:String?

	/**
	* Gibt die relevanten Zusaetze zur Anschrift an.
	* Als Anschriftenzusatz kann z. B. „Hinterhaus“ angegeben werden.
	*/
    var  Anschriftenzusatz:String?

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
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        
            
        let __PostleitzahlItemElement=__request.writeElement(obj: Postleitzahl, type:String.self, name:"Postleitzahl", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:true)
        if __PostleitzahlItemElement != nil
        {
            __PostleitzahlItemElement!.stringValue = self.Postleitzahl!;
        }
            
        let __OrtItemElement=__request.writeElement(obj: Ort, type:String.self, name:"Ort", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:false)
        if __OrtItemElement != nil
        {
            __OrtItemElement!.stringValue = self.Ort;
        }
            
        let __LandItemElement=__request.writeElement(obj: Land, type:EPA_FdV_AUTHZ_LandType.self, name:"Land", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:false)
        if __LandItemElement != nil
        {
            self.Land.serialize(__parent: __LandItemElement!, __request: __request);
        }
            
        let __StrasseItemElement=__request.writeElement(obj: Strasse, type:String.self, name:"Strasse", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:true)
        if __StrasseItemElement != nil
        {
            __StrasseItemElement!.stringValue = self.Strasse!;
        }
            
        let __HausnummerItemElement=__request.writeElement(obj: Hausnummer, type:String.self, name:"Hausnummer", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:true)
        if __HausnummerItemElement != nil
        {
            __HausnummerItemElement!.stringValue = self.Hausnummer!;
        }
            
        let __AnschriftenzusatzItemElement=__request.writeElement(obj: Anschriftenzusatz, type:String.self, name:"Anschriftenzusatz", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:true)
        if __AnschriftenzusatzItemElement != nil
        {
            __AnschriftenzusatzItemElement!.stringValue = self.Anschriftenzusatz!;
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Postleitzahl"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Postleitzahl")
            {
                self.Postleitzahl = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="Ort"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Ort")
            {
                self.Ort = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="Land"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Land")
            {
                self.Land = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_LandType.self) as! EPA_FdV_AUTHZ_LandType
            }
            return true;
        }
        if __node.localName=="Strasse"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Strasse")
            {
                self.Strasse = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="Hausnummer"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Hausnummer")
            {
                self.Hausnummer = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="Anschriftenzusatz"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Anschriftenzusatz")
            {
                self.Anschriftenzusatz = __node.stringValue!
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