//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_PHRKeyType : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  RecordKey:EPA_FdV_AUTHZ_KeyType=EPA_FdV_AUTHZ_KeyType()

    var  ContextKey:EPA_FdV_AUTHZ_KeyType=EPA_FdV_AUTHZ_KeyType()

    var  insurant:String=""

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
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"insurant", url:"")
        {
            self.insurant = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"insurant", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        
            
        let __RecordKeyItemElement=__request.writeElement(obj: RecordKey, type:EPA_FdV_AUTHZ_KeyType.self, name:"RecordKey", URI:"http://ws.gematik.de/fa/phr/v1.1", parent:__parent, skipNullProperty:false)
        if __RecordKeyItemElement != nil
        {
            self.RecordKey.serialize(__parent: __RecordKeyItemElement!, __request: __request);
        }
            
        let __ContextKeyItemElement=__request.writeElement(obj: ContextKey, type:EPA_FdV_AUTHZ_KeyType.self, name:"ContextKey", URI:"http://ws.gematik.de/fa/phr/v1.1", parent:__parent, skipNullProperty:false)
        if __ContextKeyItemElement != nil
        {
            self.ContextKey.serialize(__parent: __ContextKeyItemElement!, __request: __request);
        }
            
        let __insurantItemElement=__request.addAttribute(name: "insurant", URI:"", stringValue:"", element:__parent)
        __insurantItemElement.stringValue = self.insurant;    

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="RecordKey"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "RecordKey")
            {
                self.RecordKey = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_KeyType.self) as! EPA_FdV_AUTHZ_KeyType
            }
            return true;
        }
        if __node.localName=="ContextKey"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "ContextKey")
            {
                self.ContextKey = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_KeyType.self) as! EPA_FdV_AUTHZ_KeyType
            }
            return true;
        }
        if __node.localName=="insurant"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "insurant")
            {
                self.insurant = __node.stringValue!
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