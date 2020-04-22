//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_LandType : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

	/**
	* Gibt das Land zu der Strassen- und oder Postfachadresse an. 
	* Soweit Angaben zur Adresse und zum Postfach gemacht werden, muss der Wohnsitzlaendercode zu beiden Adressdaten vorhanden sein.
	* Anlage 8 (Staatsangehörigkeit und Länderkennzeichen für Auslandsanschriften) zur DEÜV, siehe www.gkv-datenaustausch.de/arbeitgeber/deuev/gemeinsame_rundschreiben/gemeinsame_rundschreiben.jsp
	*/
    var  Wohnsitzlaendercode:String=""

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
        
            
        let __WohnsitzlaendercodeItemElement=__request.writeElement(obj: Wohnsitzlaendercode, type:String.self, name:"Wohnsitzlaendercode", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:false)
        if __WohnsitzlaendercodeItemElement != nil
        {
            __WohnsitzlaendercodeItemElement!.stringValue = self.Wohnsitzlaendercode;
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Wohnsitzlaendercode"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Wohnsitzlaendercode")
            {
                self.Wohnsitzlaendercode = __node.stringValue!
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