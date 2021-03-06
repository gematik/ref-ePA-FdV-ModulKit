//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_EncryptedKeyContainerType : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  Ciphertext:Data=Data()

    var  AssociatedData:String=""

    var  algorithm:String=""

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
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"algorithm", url:"")
        {
            self.algorithm = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"algorithm", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        
            
        let __CiphertextItemElement=__request.writeElement(obj: Ciphertext, type:Data.self, name:"Ciphertext", URI:"http://ws.gematik.de/fd/phrs/AuthorizationService/v1.1", parent:__parent, skipNullProperty:false)
        if __CiphertextItemElement != nil
        {
            __request.setBinary(propertyElement: __CiphertextItemElement!, data:self.Ciphertext, isSwaRef:false, isAttribute:false);
        }
            
        let __AssociatedDataItemElement=__request.writeElement(obj: AssociatedData, type:String.self, name:"AssociatedData", URI:"http://ws.gematik.de/fd/phrs/AuthorizationService/v1.1", parent:__parent, skipNullProperty:false)
        if __AssociatedDataItemElement != nil
        {
            __AssociatedDataItemElement!.stringValue = self.AssociatedData;
        }
            
        let __algorithmItemElement=__request.addAttribute(name: "algorithm", URI:"", stringValue:"", element:__parent)
        __algorithmItemElement.stringValue = self.algorithm;    

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Ciphertext"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Ciphertext")
            {
                self.Ciphertext = __request.getBinary(element: __node,isSwaRef:false, isAttribute:false)
            }
            return true;
        }
        if __node.localName=="AssociatedData"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "AssociatedData")
            {
                self.AssociatedData = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="algorithm"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "algorithm")
            {
                self.algorithm = __node.stringValue!
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