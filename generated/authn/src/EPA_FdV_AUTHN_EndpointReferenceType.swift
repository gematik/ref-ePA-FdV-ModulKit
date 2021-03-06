//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_EndpointReferenceType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  Address:EPA_FdV_AUTHN_AttributedURIType=EPA_FdV_AUTHN_AttributedURIType()

    var  ReferenceParameters:EPA_FdV_AUTHN_ReferenceParametersType?

    var  Metadata:EPA_FdV_AUTHN_MetadataType?

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
        
            
        let __AddressItemElement=__request.writeElement(obj: Address, type:EPA_FdV_AUTHN_AttributedURIType.self, name:"Address", URI:"http://www.w3.org/2005/08/addressing", parent:__parent, skipNullProperty:false)
        if __AddressItemElement != nil
        {
            self.Address.serialize(__parent: __AddressItemElement!, __request: __request);
        }
            
        let __ReferenceParametersItemElement=__request.writeElement(obj: ReferenceParameters, type:EPA_FdV_AUTHN_ReferenceParametersType.self, name:"ReferenceParameters", URI:"http://www.w3.org/2005/08/addressing", parent:__parent, skipNullProperty:true)
        if __ReferenceParametersItemElement != nil
        {
            self.ReferenceParameters!.serialize(__parent: __ReferenceParametersItemElement!, __request: __request);
        }
            
        let __MetadataItemElement=__request.writeElement(obj: Metadata, type:EPA_FdV_AUTHN_MetadataType.self, name:"Metadata", URI:"http://www.w3.org/2005/08/addressing", parent:__parent, skipNullProperty:true)
        if __MetadataItemElement != nil
        {
            self.Metadata!.serialize(__parent: __MetadataItemElement!, __request: __request);
        }
            
        for case let elem as DDXMLNode in self.any
        {
            elem.detach()
            __parent.addChild(elem)
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Address"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "Address")
            {
                self.Address = try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_AttributedURIType.self) as! EPA_FdV_AUTHN_AttributedURIType
            }
            return true;
        }
        if __node.localName=="ReferenceParameters"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "ReferenceParameters")
            {
                self.ReferenceParameters = try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_ReferenceParametersType.self) as? EPA_FdV_AUTHN_ReferenceParametersType
            }
            return true;
        }
        if __node.localName=="Metadata"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "Metadata")
            {
                self.Metadata = try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_MetadataType.self) as? EPA_FdV_AUTHN_MetadataType
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