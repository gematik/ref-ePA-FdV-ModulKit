//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_EncryptionPropertiesType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var EncryptionProperty:[EPA_FdV_AUTHN_EncryptionPropertyType]? 

    var  Id:String?

    public required override init()
    {
        super.init()
    }
    public func loadWithXml(__node: DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
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
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"Id", url:"")
        {
            self.Id = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"Id", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        if self.EncryptionProperty != nil
        {
            for __item in self.EncryptionProperty!
            {
                let __EncryptionPropertyItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHN_EncryptionPropertyType.self, name:"EncryptionProperty", URI:"http://www.w3.org/2001/04/xmlenc#", parent:__parent, skipNullProperty:false)
                if __EncryptionPropertyItemElement != nil
                {
                    __item.serialize(__parent: __EncryptionPropertyItemElement!, __request: __request);
                }
            }
        }
            
        if self.Id != nil
        {
            let __IdItemElement=__request.addAttribute(name: "Id", URI:"", stringValue:"", element:__parent)
            __IdItemElement.stringValue = self.Id!;
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="EncryptionProperty"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "EncryptionProperty")
            {
                if self.EncryptionProperty == nil
                {
                    self.EncryptionProperty = []
                }
                self.EncryptionProperty!.append(try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_EncryptionPropertyType.self) as! EPA_FdV_AUTHN_EncryptionPropertyType)
            }
            return true;
        }
        if __node.localName=="Id"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "Id")
            {
                self.Id = __node.stringValue!
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