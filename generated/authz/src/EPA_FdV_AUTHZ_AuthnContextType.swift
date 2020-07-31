//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_AuthnContextType : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  AuthnContextClassRef:String=""

    var  AuthnContextDecl:NSObject?

    var  AuthnContextDeclRef:String?

    var  AuthnContextDecl_1:NSObject?

    var  AuthnContextDeclRef_1:String?

    var AuthenticatingAuthority:[String?]? = []

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
        
            
        let __AuthnContextClassRefItemElement=__request.writeElement(obj: AuthnContextClassRef, type:String.self, name:"AuthnContextClassRef", URI:"urn:oasis:names:tc:SAML:2.0:assertion", parent:__parent, skipNullProperty:false)
        if __AuthnContextClassRefItemElement != nil
        {
            __AuthnContextClassRefItemElement!.stringValue = self.AuthnContextClassRef;
        }
            
        let __AuthnContextDeclItemElement=__request.writeElement(obj: AuthnContextDecl, type:NSObject.self, name:"AuthnContextDecl", URI:"urn:oasis:names:tc:SAML:2.0:assertion", parent:__parent, skipNullProperty:true)
        if __AuthnContextDeclItemElement != nil
        {
            __request.setAnyTypeValue(item: self.AuthnContextDecl!, propertyElement:__AuthnContextDeclItemElement!);
        }
            
        let __AuthnContextDeclRefItemElement=__request.writeElement(obj: AuthnContextDeclRef, type:String.self, name:"AuthnContextDeclRef", URI:"urn:oasis:names:tc:SAML:2.0:assertion", parent:__parent, skipNullProperty:true)
        if __AuthnContextDeclRefItemElement != nil
        {
            __AuthnContextDeclRefItemElement!.stringValue = self.AuthnContextDeclRef!;
        }
            
        let __AuthnContextDecl_1ItemElement=__request.writeElement(obj: AuthnContextDecl_1, type:NSObject.self, name:"AuthnContextDecl", URI:"urn:oasis:names:tc:SAML:2.0:assertion", parent:__parent, skipNullProperty:true)
        if __AuthnContextDecl_1ItemElement != nil
        {
            __request.setAnyTypeValue(item: self.AuthnContextDecl_1!, propertyElement:__AuthnContextDecl_1ItemElement!);
        }
            
        let __AuthnContextDeclRef_1ItemElement=__request.writeElement(obj: AuthnContextDeclRef_1, type:String.self, name:"AuthnContextDeclRef", URI:"urn:oasis:names:tc:SAML:2.0:assertion", parent:__parent, skipNullProperty:true)
        if __AuthnContextDeclRef_1ItemElement != nil
        {
            __AuthnContextDeclRef_1ItemElement!.stringValue = self.AuthnContextDeclRef_1!;
        }
            
        if self.AuthenticatingAuthority != nil
        {
            for __item in self.AuthenticatingAuthority!
            {
                let __AuthenticatingAuthorityItemElement=__request.writeElement(obj: __item, type:String.self, name:"AuthenticatingAuthority", URI:"urn:oasis:names:tc:SAML:2.0:assertion", parent:__parent, skipNullProperty:false)
                if __AuthenticatingAuthorityItemElement != nil
                {
                    __AuthenticatingAuthorityItemElement!.stringValue = __item!;
                }
            }
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if(__node.localName == "AuthnContextDecl")
        {
            var __temp:DDXMLNode?=nil
            __temp=EPA_FdV_AUTHZ_Helper.getNode(node: (__node.parent as! DDXMLElement), name:"AuthnContextDecl", index:0)
            if __temp != nil && __temp!.index == __node.index
            {
                self.AuthnContextDecl = __request.getAnyTypeValue(node: __temp!)
                return true
            }
            __temp=EPA_FdV_AUTHZ_Helper.getNode(node: (__node.parent as! DDXMLElement), name:"AuthnContextDecl", index:1)
            if __temp != nil && __temp!.index == __node.index
            {
                self.AuthnContextDecl_1 = __request.getAnyTypeValue(node: __temp!)
                return true
            }
        }
        if(__node.localName == "AuthnContextDeclRef")
        {
            var __temp:DDXMLNode?=nil
            __temp=EPA_FdV_AUTHZ_Helper.getNode(node: (__node.parent as! DDXMLElement), name:"AuthnContextDeclRef", index:0)
            if __temp != nil && __temp!.index == __node.index
            {
                self.AuthnContextDeclRef = __temp!.stringValue!
                return true
            }
            __temp=EPA_FdV_AUTHZ_Helper.getNode(node: (__node.parent as! DDXMLElement), name:"AuthnContextDeclRef", index:1)
            if __temp != nil && __temp!.index == __node.index
            {
                self.AuthnContextDeclRef_1 = __temp!.stringValue!
                return true
            }
        }
        if __node.localName=="AuthnContextClassRef"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "AuthnContextClassRef")
            {
                self.AuthnContextClassRef = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="AuthenticatingAuthority"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "AuthenticatingAuthority")
            {
                if self.AuthenticatingAuthority == nil
                {
                    self.AuthenticatingAuthority = []
                }
                self.AuthenticatingAuthority!.append(__node.stringValue!)
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