//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_SubjectType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  BaseID:EPA_FdV_AUTHN_BaseIDAbstractType?

    var  NameID:EPA_FdV_AUTHN_NameIDType?

    var  EncryptedID:EPA_FdV_AUTHN_EncryptedElementType?

    var SubjectConfirmation:[EPA_FdV_AUTHN_SubjectConfirmationType?]? = []

    var SubjectConfirmation_1:[EPA_FdV_AUTHN_SubjectConfirmationType?]? = []

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
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        let __BaseIDItemElement=__request.writeElement(obj: BaseID, type:EPA_FdV_AUTHN_BaseIDAbstractType.self, name:"BaseID", URI:"urn:oasis:names:tc:SAML:2.0:assertion", parent:__parent, skipNullProperty:true)
        if __BaseIDItemElement != nil
        {
            self.BaseID!.serialize(__parent: __BaseIDItemElement!, __request: __request);
        }
            
        let __NameIDItemElement=__request.writeElement(obj: NameID, type:EPA_FdV_AUTHN_NameIDType.self, name:"NameID", URI:"urn:oasis:names:tc:SAML:2.0:assertion", parent:__parent, skipNullProperty:true)
        if __NameIDItemElement != nil
        {
            self.NameID!.serialize(__parent: __NameIDItemElement!, __request: __request);
        }
            
        let __EncryptedIDItemElement=__request.writeElement(obj: EncryptedID, type:EPA_FdV_AUTHN_EncryptedElementType.self, name:"EncryptedID", URI:"urn:oasis:names:tc:SAML:2.0:assertion", parent:__parent, skipNullProperty:true)
        if __EncryptedIDItemElement != nil
        {
            self.EncryptedID!.serialize(__parent: __EncryptedIDItemElement!, __request: __request);
        }
            
        if self.SubjectConfirmation != nil
        {
            for __item in self.SubjectConfirmation!
            {
                let __SubjectConfirmationItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHN_SubjectConfirmationType.self, name:"SubjectConfirmation", URI:"urn:oasis:names:tc:SAML:2.0:assertion", parent:__parent, skipNullProperty:false)
                if __SubjectConfirmationItemElement != nil
                {
                    __item!.serialize(__parent: __SubjectConfirmationItemElement!, __request: __request);
                }
            }
        }
            
        if self.SubjectConfirmation_1 != nil
        {
            for __item in self.SubjectConfirmation_1!
            {
                let __SubjectConfirmation_1ItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHN_SubjectConfirmationType.self, name:"SubjectConfirmation", URI:"urn:oasis:names:tc:SAML:2.0:assertion", parent:__parent, skipNullProperty:false)
                if __SubjectConfirmation_1ItemElement != nil
                {
                    __item!.serialize(__parent: __SubjectConfirmation_1ItemElement!, __request: __request);
                }
            }
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="BaseID"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "BaseID")
            {
                self.BaseID = try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_BaseIDAbstractType.self) as? EPA_FdV_AUTHN_BaseIDAbstractType
            }
            return true;
        }
        if __node.localName=="NameID"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "NameID")
            {
                self.NameID = try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_NameIDType.self) as? EPA_FdV_AUTHN_NameIDType
            }
            return true;
        }
        if __node.localName=="EncryptedID"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "EncryptedID")
            {
                self.EncryptedID = try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_EncryptedElementType.self) as? EPA_FdV_AUTHN_EncryptedElementType
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