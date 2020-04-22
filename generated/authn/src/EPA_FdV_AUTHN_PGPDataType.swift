//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_PGPDataType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  PGPKeyID:Data=Data()

    var  PGPKeyPacket:Data?=Data()

    var  PGPKeyPacket_1:Data=Data()

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
        
            
        let __PGPKeyIDItemElement=__request.writeElement(obj: PGPKeyID, type:Data.self, name:"PGPKeyID", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:false)
        if __PGPKeyIDItemElement != nil
        {
            __request.setBinary(propertyElement: __PGPKeyIDItemElement!, data:self.PGPKeyID, isSwaRef:false, isAttribute:false);
        }
            
        let __PGPKeyPacketItemElement=__request.writeElement(obj: PGPKeyPacket, type:Data.self, name:"PGPKeyPacket", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:true)
        if __PGPKeyPacketItemElement != nil
        {
            __request.setBinary(propertyElement: __PGPKeyPacketItemElement!, data:self.PGPKeyPacket!, isSwaRef:false, isAttribute:false);
        }
            
        let __PGPKeyPacket_1ItemElement=__request.writeElement(obj: PGPKeyPacket_1, type:Data.self, name:"PGPKeyPacket", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:false)
        if __PGPKeyPacket_1ItemElement != nil
        {
            __request.setBinary(propertyElement: __PGPKeyPacket_1ItemElement!, data:self.PGPKeyPacket_1, isSwaRef:false, isAttribute:false);
        }
            
        for case let elem as DDXMLNode in self.any
        {
            elem.detach()
            __parent.addChild(elem)
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if(__node.localName == "PGPKeyPacket")
        {
            var __temp:DDXMLNode?=nil
            __temp=EPA_FdV_AUTHN_Helper.getNode(node: (__node.parent as! DDXMLElement), name:"PGPKeyPacket", index:0)
            if __temp != nil && __temp!.index == __node.index
            {
                self.PGPKeyPacket = __request.getBinary(element: __temp!,isSwaRef:false, isAttribute:false)
                return true
            }
            __temp=EPA_FdV_AUTHN_Helper.getNode(node: (__node.parent as! DDXMLElement), name:"PGPKeyPacket", index:1)
            if __temp != nil && __temp!.index == __node.index
            {
                self.PGPKeyPacket_1 = __request.getBinary(element: __temp!,isSwaRef:false, isAttribute:false)
                return true
            }
        }
        if __node.localName=="PGPKeyID"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "PGPKeyID")
            {
                self.PGPKeyID = __request.getBinary(element: __node,isSwaRef:false, isAttribute:false)
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