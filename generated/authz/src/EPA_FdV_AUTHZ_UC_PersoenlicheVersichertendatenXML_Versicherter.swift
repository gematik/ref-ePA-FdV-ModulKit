//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_UC_PersoenlicheVersichertendatenXML_Versicherter : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

	/**
	* Die Versicherten-ID ist der 10-stellige unveraenderliche Teil der 30-stelligen Krankenversichertennummer.
	*/
    var  Versicherten_ID:String=""

    var  Person:EPA_FdV_AUTHZ_UC_PersoenlicheVersichertendatenXML_Versicherter_Person=EPA_FdV_AUTHZ_UC_PersoenlicheVersichertendatenXML_Versicherter_Person()

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
        
            
        let __Versicherten_IDItemElement=__request.writeElement(obj: Versicherten_ID, type:String.self, name:"Versicherten_ID", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:false)
        if __Versicherten_IDItemElement != nil
        {
            __Versicherten_IDItemElement!.stringValue = self.Versicherten_ID;
        }
            
        let __PersonItemElement=__request.writeElement(obj: Person, type:EPA_FdV_AUTHZ_UC_PersoenlicheVersichertendatenXML_Versicherter_Person.self, name:"Person", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:false)
        if __PersonItemElement != nil
        {
            self.Person.serialize(__parent: __PersonItemElement!, __request: __request);
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Versicherten_ID"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Versicherten_ID")
            {
                self.Versicherten_ID = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="Person"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Person")
            {
                self.Person = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_UC_PersoenlicheVersichertendatenXML_Versicherter_Person.self) as! EPA_FdV_AUTHZ_UC_PersoenlicheVersichertendatenXML_Versicherter_Person
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