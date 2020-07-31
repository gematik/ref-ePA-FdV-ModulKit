//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_AgreementMethodType : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  KA_x002D_Nonce:Data?=Data()

    var  OriginatorKeyInfo:EPA_FdV_AUTHZ_KeyInfoType?

    var  RecipientKeyInfo:EPA_FdV_AUTHZ_KeyInfoType?

    var  Algorithm:String=""

    var any=[Any]()

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
                    self.any.append(__request.getAny(node: __node))
                }
            }
        }
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"Algorithm", url:"")
        {
            self.Algorithm = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"Algorithm", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        
            
        let __KA_x002D_NonceItemElement=__request.writeElement(obj: KA_x002D_Nonce, type:Data.self, name:"KA-Nonce", URI:"http://www.w3.org/2001/04/xmlenc#", parent:__parent, skipNullProperty:true)
        if __KA_x002D_NonceItemElement != nil
        {
            __request.setBinary(propertyElement: __KA_x002D_NonceItemElement!, data:self.KA_x002D_Nonce!, isSwaRef:false, isAttribute:false);
        }
            
        let __OriginatorKeyInfoItemElement=__request.writeElement(obj: OriginatorKeyInfo, type:EPA_FdV_AUTHZ_KeyInfoType.self, name:"OriginatorKeyInfo", URI:"http://www.w3.org/2001/04/xmlenc#", parent:__parent, skipNullProperty:true)
        if __OriginatorKeyInfoItemElement != nil
        {
            self.OriginatorKeyInfo!.serialize(__parent: __OriginatorKeyInfoItemElement!, __request: __request);
        }
            
        let __RecipientKeyInfoItemElement=__request.writeElement(obj: RecipientKeyInfo, type:EPA_FdV_AUTHZ_KeyInfoType.self, name:"RecipientKeyInfo", URI:"http://www.w3.org/2001/04/xmlenc#", parent:__parent, skipNullProperty:true)
        if __RecipientKeyInfoItemElement != nil
        {
            self.RecipientKeyInfo!.serialize(__parent: __RecipientKeyInfoItemElement!, __request: __request);
        }
            
        let __AlgorithmItemElement=__request.addAttribute(name: "Algorithm", URI:"", stringValue:"", element:__parent)
        __AlgorithmItemElement.stringValue = self.Algorithm;    
            
        for case let elem as DDXMLNode in self.any
        {
            elem.detach()
            __parent.addChild(elem)
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="KA-Nonce"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "KA-Nonce")
            {
                self.KA_x002D_Nonce = __request.getBinary(element: __node,isSwaRef:false, isAttribute:false)
            }
            return true;
        }
        if __node.localName=="OriginatorKeyInfo"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "OriginatorKeyInfo")
            {
                self.OriginatorKeyInfo = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_KeyInfoType.self) as? EPA_FdV_AUTHZ_KeyInfoType
            }
            return true;
        }
        if __node.localName=="RecipientKeyInfo"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "RecipientKeyInfo")
            {
                self.RecipientKeyInfo = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_KeyInfoType.self) as? EPA_FdV_AUTHZ_KeyInfoType
            }
            return true;
        }
        if __node.localName=="Algorithm"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Algorithm")
            {
                self.Algorithm = __node.stringValue!
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