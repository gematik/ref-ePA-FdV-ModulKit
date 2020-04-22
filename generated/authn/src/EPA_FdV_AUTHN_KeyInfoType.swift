//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_KeyInfoType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var KeyName:[String?]? = []

    var KeyValue:[EPA_FdV_AUTHN_KeyValueType?]? = []

    var RetrievalMethod:[EPA_FdV_AUTHN_RetrievalMethodType?]? = []

    var X509Data:[EPA_FdV_AUTHN_X509DataType?]? = []

    var PGPData:[EPA_FdV_AUTHN_PGPDataType?]? = []

    var SPKIData:[EPA_FdV_AUTHN_SPKIDataType?]? = []

    var MgmtData:[String?]? = []

    var  Id:String?

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
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"Id", url:"")
        {
            self.Id = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"Id", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        if self.KeyName != nil
        {
            for __item in self.KeyName!
            {
                let __KeyNameItemElement=__request.writeElement(obj: __item, type:String.self, name:"KeyName", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:false)
                if __KeyNameItemElement != nil
                {
                    __KeyNameItemElement!.stringValue = __item!;
                }
            }
        }
            
        if self.KeyValue != nil
        {
            for __item in self.KeyValue!
            {
                let __KeyValueItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHN_KeyValueType.self, name:"KeyValue", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:false)
                if __KeyValueItemElement != nil
                {
                    __item!.serialize(__parent: __KeyValueItemElement!, __request: __request);
                }
            }
        }
            
        if self.RetrievalMethod != nil
        {
            for __item in self.RetrievalMethod!
            {
                let __RetrievalMethodItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHN_RetrievalMethodType.self, name:"RetrievalMethod", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:false)
                if __RetrievalMethodItemElement != nil
                {
                    __item!.serialize(__parent: __RetrievalMethodItemElement!, __request: __request);
                }
            }
        }
            
        if self.X509Data != nil
        {
            for __item in self.X509Data!
            {
                let __X509DataItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHN_X509DataType.self, name:"X509Data", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:false)
                if __X509DataItemElement != nil
                {
                    __item!.serialize(__parent: __X509DataItemElement!, __request: __request);
                }
            }
        }
            
        if self.PGPData != nil
        {
            for __item in self.PGPData!
            {
                let __PGPDataItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHN_PGPDataType.self, name:"PGPData", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:false)
                if __PGPDataItemElement != nil
                {
                    __item!.serialize(__parent: __PGPDataItemElement!, __request: __request);
                }
            }
        }
            
        if self.SPKIData != nil
        {
            for __item in self.SPKIData!
            {
                let __SPKIDataItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHN_SPKIDataType.self, name:"SPKIData", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:false)
                if __SPKIDataItemElement != nil
                {
                    __item!.serialize(__parent: __SPKIDataItemElement!, __request: __request);
                }
            }
        }
            
        if self.MgmtData != nil
        {
            for __item in self.MgmtData!
            {
                let __MgmtDataItemElement=__request.writeElement(obj: __item, type:String.self, name:"MgmtData", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:false)
                if __MgmtDataItemElement != nil
                {
                    __MgmtDataItemElement!.stringValue = __item!;
                }
            }
        }
            
        if self.Id != nil
        {
            let __IdItemElement=__request.addAttribute(name: "Id", URI:"", stringValue:"", element:__parent)
            __IdItemElement.stringValue = self.Id!;
        }
            
        for case let elem as DDXMLNode in self.any
        {
            elem.detach()
            __parent.addChild(elem)
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="KeyName"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "KeyName")
            {
                if self.KeyName == nil
                {
                    self.KeyName = []
                }
                self.KeyName!.append(__node.stringValue!)
            }
            return true;
        }
        if __node.localName=="KeyValue"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "KeyValue")
            {
                if self.KeyValue == nil
                {
                    self.KeyValue = []
                }
                self.KeyValue!.append(try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_KeyValueType.self) as? EPA_FdV_AUTHN_KeyValueType)
            }
            return true;
        }
        if __node.localName=="RetrievalMethod"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "RetrievalMethod")
            {
                if self.RetrievalMethod == nil
                {
                    self.RetrievalMethod = []
                }
                self.RetrievalMethod!.append(try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_RetrievalMethodType.self) as? EPA_FdV_AUTHN_RetrievalMethodType)
            }
            return true;
        }
        if __node.localName=="X509Data"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "X509Data")
            {
                if self.X509Data == nil
                {
                    self.X509Data = []
                }
                self.X509Data!.append(try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_X509DataType.self) as? EPA_FdV_AUTHN_X509DataType)
            }
            return true;
        }
        if __node.localName=="PGPData"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "PGPData")
            {
                if self.PGPData == nil
                {
                    self.PGPData = []
                }
                self.PGPData!.append(try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_PGPDataType.self) as? EPA_FdV_AUTHN_PGPDataType)
            }
            return true;
        }
        if __node.localName=="SPKIData"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "SPKIData")
            {
                if self.SPKIData == nil
                {
                    self.SPKIData = []
                }
                self.SPKIData!.append(try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_SPKIDataType.self) as? EPA_FdV_AUTHN_SPKIDataType)
            }
            return true;
        }
        if __node.localName=="MgmtData"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "MgmtData")
            {
                if self.MgmtData == nil
                {
                    self.MgmtData = []
                }
                self.MgmtData!.append(__node.stringValue!)
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