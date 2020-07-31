//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_UC_PersoenlicheVersichertendatenXML : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  Versicherter:EPA_FdV_AUTHZ_UC_PersoenlicheVersichertendatenXML_Versicherter=EPA_FdV_AUTHZ_UC_PersoenlicheVersichertendatenXML_Versicherter()

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
        
            
        let __VersicherterItemElement=__request.writeElement(obj: Versicherter, type:EPA_FdV_AUTHZ_UC_PersoenlicheVersichertendatenXML_Versicherter.self, name:"Versicherter", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:false)
        if __VersicherterItemElement != nil
        {
            self.Versicherter.serialize(__parent: __VersicherterItemElement!, __request: __request);
        }
            
        let __CDM_VERSIONItemElement=__request.addAttribute(name: "CDM_VERSION", URI:"", stringValue:"", element:__parent)
        __CDM_VERSIONItemElement.stringValue = self.CDM_VERSION;    

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Versicherter"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Versicherter")
            {
                self.Versicherter = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_UC_PersoenlicheVersichertendatenXML_Versicherter.self) as! EPA_FdV_AUTHZ_UC_PersoenlicheVersichertendatenXML_Versicherter
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