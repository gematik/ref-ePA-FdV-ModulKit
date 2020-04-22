//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_ActiveParticipantType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var RoleIDCode:[EPA_FdV_AUTHN_CodedValueType?]? = []

    var  UserID:String=""

    var  AlternativeUserID:String?

    var  UserName:String?

    var  UserIsRequestor:Bool?

    var  NetworkAccessPointID:String?

    var  NetworkAccessPointTypeCode:EPA_FdV_AUTHN_ActiveParticipantType_NetworkAccessPointTypeCode?

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
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"UserID", url:"")
        {
            self.UserID = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"UserID", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"AlternativeUserID", url:"")
        {
            self.AlternativeUserID = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"AlternativeUserID", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"UserName", url:"")
        {
            self.UserName = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"UserName", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"UserIsRequestor", url:"")
        {
            self.UserIsRequestor = EPA_FdV_AUTHN_Helper.toBoolFromString(str: EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"UserIsRequestor", url:"")!.stringValue!)
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"NetworkAccessPointID", url:"")
        {
            self.NetworkAccessPointID = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"NetworkAccessPointID", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"NetworkAccessPointTypeCode", url:"")
        {
            self.NetworkAccessPointTypeCode = EPA_FdV_AUTHN_ActiveParticipantType_NetworkAccessPointTypeCode.createWithXml(node: EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"NetworkAccessPointTypeCode", url:"")!)!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        if self.RoleIDCode != nil
        {
            for __item in self.RoleIDCode!
            {
                let __RoleIDCodeItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHN_CodedValueType.self, name:"RoleIDCode", URI:"http://ws.gematik.de/fa/phrext/v1.0", parent:__parent, skipNullProperty:false)
                if __RoleIDCodeItemElement != nil
                {
                    __item!.serialize(__parent: __RoleIDCodeItemElement!, __request: __request);
                }
            }
        }
            
        let __UserIDItemElement=__request.addAttribute(name: "UserID", URI:"", stringValue:"", element:__parent)
        __UserIDItemElement.stringValue = self.UserID;    
            
        if self.AlternativeUserID != nil
        {
            let __AlternativeUserIDItemElement=__request.addAttribute(name: "AlternativeUserID", URI:"", stringValue:"", element:__parent)
            __AlternativeUserIDItemElement.stringValue = self.AlternativeUserID!;
        }
            
        if self.UserName != nil
        {
            let __UserNameItemElement=__request.addAttribute(name: "UserName", URI:"", stringValue:"", element:__parent)
            __UserNameItemElement.stringValue = self.UserName!;
        }
            
        if self.UserIsRequestor != nil
        {
            let __UserIsRequestorItemElement=__request.addAttribute(name: "UserIsRequestor", URI:"", stringValue:"", element:__parent)
            __UserIsRequestorItemElement.stringValue = EPA_FdV_AUTHN_Helper.toBoolStringFromNumber(boolNumber: self.UserIsRequestor! as NSNumber);
        }
            
        if self.NetworkAccessPointID != nil
        {
            let __NetworkAccessPointIDItemElement=__request.addAttribute(name: "NetworkAccessPointID", URI:"", stringValue:"", element:__parent)
            __NetworkAccessPointIDItemElement.stringValue = self.NetworkAccessPointID!;
        }
            
        if self.NetworkAccessPointTypeCode != nil
        {
            let __NetworkAccessPointTypeCodeItemElement=__request.addAttribute(name: "NetworkAccessPointTypeCode", URI:"", stringValue:"", element:__parent)
            self.NetworkAccessPointTypeCode!.serialize(__parent: __NetworkAccessPointTypeCodeItemElement);
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="RoleIDCode"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "RoleIDCode")
            {
                if self.RoleIDCode == nil
                {
                    self.RoleIDCode = []
                }
                self.RoleIDCode!.append(try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_CodedValueType.self) as? EPA_FdV_AUTHN_CodedValueType)
            }
            return true;
        }
        if __node.localName=="UserID"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "UserID")
            {
                self.UserID = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="AlternativeUserID"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "AlternativeUserID")
            {
                self.AlternativeUserID = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="UserName"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "UserName")
            {
                self.UserName = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="UserIsRequestor"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "UserIsRequestor")
            {
                self.UserIsRequestor = EPA_FdV_AUTHN_Helper.toBoolFromString(str: __node.stringValue!)
            }
            return true;
        }
        if __node.localName=="NetworkAccessPointID"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "NetworkAccessPointID")
            {
                self.NetworkAccessPointID = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="NetworkAccessPointTypeCode"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "NetworkAccessPointTypeCode")
            {
                self.NetworkAccessPointTypeCode = EPA_FdV_AUTHN_ActiveParticipantType_NetworkAccessPointTypeCode.createWithXml(node: __node)!
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