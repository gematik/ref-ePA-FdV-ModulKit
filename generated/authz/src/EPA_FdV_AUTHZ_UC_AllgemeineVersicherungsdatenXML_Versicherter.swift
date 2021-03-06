//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_UC_AllgemeineVersicherungsdatenXML_Versicherter : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  Versicherungsschutz:EPA_FdV_AUTHZ_UC_AllgemeineVersicherungsdatenXML_Versicherter_Versicherungsschutz=EPA_FdV_AUTHZ_UC_AllgemeineVersicherungsdatenXML_Versicherter_Versicherungsschutz()

    var  Zusatzinfos:EPA_FdV_AUTHZ_UC_AllgemeineVersicherungsdatenXML_Versicherter_Zusatzinfos=EPA_FdV_AUTHZ_UC_AllgemeineVersicherungsdatenXML_Versicherter_Zusatzinfos()

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
        
            
        let __VersicherungsschutzItemElement=__request.writeElement(obj: Versicherungsschutz, type:EPA_FdV_AUTHZ_UC_AllgemeineVersicherungsdatenXML_Versicherter_Versicherungsschutz.self, name:"Versicherungsschutz", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:false)
        if __VersicherungsschutzItemElement != nil
        {
            self.Versicherungsschutz.serialize(__parent: __VersicherungsschutzItemElement!, __request: __request);
        }
            
        let __ZusatzinfosItemElement=__request.writeElement(obj: Zusatzinfos, type:EPA_FdV_AUTHZ_UC_AllgemeineVersicherungsdatenXML_Versicherter_Zusatzinfos.self, name:"Zusatzinfos", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:false)
        if __ZusatzinfosItemElement != nil
        {
            self.Zusatzinfos.serialize(__parent: __ZusatzinfosItemElement!, __request: __request);
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Versicherungsschutz"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Versicherungsschutz")
            {
                self.Versicherungsschutz = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_UC_AllgemeineVersicherungsdatenXML_Versicherter_Versicherungsschutz.self) as! EPA_FdV_AUTHZ_UC_AllgemeineVersicherungsdatenXML_Versicherter_Versicherungsschutz
            }
            return true;
        }
        if __node.localName=="Zusatzinfos"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Zusatzinfos")
            {
                self.Zusatzinfos = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_UC_AllgemeineVersicherungsdatenXML_Versicherter_Zusatzinfos.self) as! EPA_FdV_AUTHZ_UC_AllgemeineVersicherungsdatenXML_Versicherter_Zusatzinfos
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