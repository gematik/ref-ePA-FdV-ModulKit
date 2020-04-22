//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_PolicyAttachment : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  AppliesTo:EPA_FdV_AUTHN_AppliesTo=EPA_FdV_AUTHN_AppliesTo()

    var Policy:[EPA_FdV_AUTHN_Policy?]? = []

    var PolicyReference:[EPA_FdV_AUTHN_PolicyReference?]? = []

    var any=[Any]()

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
                    self.any.append(__request.getAny(node: __node))
                }
            }
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        let __AppliesToItemElement=__request.writeElement(obj: AppliesTo, type:EPA_FdV_AUTHN_AppliesTo.self, name:"AppliesTo", URI:"http://schemas.xmlsoap.org/ws/2004/09/policy", parent:__parent, skipNullProperty:false)
        if __AppliesToItemElement != nil
        {
            self.AppliesTo.serialize(__parent: __AppliesToItemElement!, __request: __request);
        }
            
        if self.Policy != nil
        {
            for __item in self.Policy!
            {
                let __PolicyItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHN_Policy.self, name:"Policy", URI:"http://schemas.xmlsoap.org/ws/2004/09/policy", parent:__parent, skipNullProperty:false)
                if __PolicyItemElement != nil
                {
                    __item!.serialize(__parent: __PolicyItemElement!, __request: __request);
                }
            }
        }
            
        if self.PolicyReference != nil
        {
            for __item in self.PolicyReference!
            {
                let __PolicyReferenceItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHN_PolicyReference.self, name:"PolicyReference", URI:"http://schemas.xmlsoap.org/ws/2004/09/policy", parent:__parent, skipNullProperty:false)
                if __PolicyReferenceItemElement != nil
                {
                    __item!.serialize(__parent: __PolicyReferenceItemElement!, __request: __request);
                }
            }
        }
            
        for case let elem as DDXMLNode in self.any
        {
            elem.detach()
            __parent.addChild(elem)
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="AppliesTo"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "AppliesTo")
            {
                self.AppliesTo = try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_AppliesTo.self) as! EPA_FdV_AUTHN_AppliesTo
            }
            return true;
        }
        if __node.localName=="Policy"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "Policy")
            {
                if self.Policy == nil
                {
                    self.Policy = []
                }
                self.Policy!.append(try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_Policy.self) as? EPA_FdV_AUTHN_Policy)
            }
            return true;
        }
        if __node.localName=="PolicyReference"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "PolicyReference")
            {
                if self.PolicyReference == nil
                {
                    self.PolicyReference = []
                }
                self.PolicyReference!.append(try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_PolicyReference.self) as? EPA_FdV_AUTHN_PolicyReference)
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