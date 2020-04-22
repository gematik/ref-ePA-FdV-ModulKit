//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_AuditSourceIdentificationType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var AuditSourceTypeCode:[EPA_FdV_AUTHN_CodedValueType?]? = []

    var  AuditEnterpriseSiteID:String?

    var  AuditSourceID:String=""

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
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"AuditEnterpriseSiteID", url:"")
        {
            self.AuditEnterpriseSiteID = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"AuditEnterpriseSiteID", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"AuditSourceID", url:"")
        {
            self.AuditSourceID = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"AuditSourceID", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        if self.AuditSourceTypeCode != nil
        {
            for __item in self.AuditSourceTypeCode!
            {
                let __AuditSourceTypeCodeItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHN_CodedValueType.self, name:"AuditSourceTypeCode", URI:"http://ws.gematik.de/fa/phrext/v1.0", parent:__parent, skipNullProperty:false)
                if __AuditSourceTypeCodeItemElement != nil
                {
                    __item!.serialize(__parent: __AuditSourceTypeCodeItemElement!, __request: __request);
                }
            }
        }
            
        if self.AuditEnterpriseSiteID != nil
        {
            let __AuditEnterpriseSiteIDItemElement=__request.addAttribute(name: "AuditEnterpriseSiteID", URI:"", stringValue:"", element:__parent)
            __AuditEnterpriseSiteIDItemElement.stringValue = self.AuditEnterpriseSiteID!;
        }
            
        let __AuditSourceIDItemElement=__request.addAttribute(name: "AuditSourceID", URI:"", stringValue:"", element:__parent)
        __AuditSourceIDItemElement.stringValue = self.AuditSourceID;    

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="AuditSourceTypeCode"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "AuditSourceTypeCode")
            {
                if self.AuditSourceTypeCode == nil
                {
                    self.AuditSourceTypeCode = []
                }
                self.AuditSourceTypeCode!.append(try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_CodedValueType.self) as? EPA_FdV_AUTHN_CodedValueType)
            }
            return true;
        }
        if __node.localName=="AuditEnterpriseSiteID"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "AuditEnterpriseSiteID")
            {
                self.AuditEnterpriseSiteID = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="AuditSourceID"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "AuditSourceID")
            {
                self.AuditSourceID = __node.stringValue!
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