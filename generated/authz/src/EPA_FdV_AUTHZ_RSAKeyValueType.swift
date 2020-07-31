//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_RSAKeyValueType : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  Modulus:Data=Data()

    var  Exponent:Data=Data()

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
        
            
        let __ModulusItemElement=__request.writeElement(obj: Modulus, type:Data.self, name:"Modulus", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:false)
        if __ModulusItemElement != nil
        {
            __request.setBinary(propertyElement: __ModulusItemElement!, data:self.Modulus, isSwaRef:false, isAttribute:false);
        }
            
        let __ExponentItemElement=__request.writeElement(obj: Exponent, type:Data.self, name:"Exponent", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:false)
        if __ExponentItemElement != nil
        {
            __request.setBinary(propertyElement: __ExponentItemElement!, data:self.Exponent, isSwaRef:false, isAttribute:false);
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Modulus"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Modulus")
            {
                self.Modulus = __request.getBinary(element: __node,isSwaRef:false, isAttribute:false)
            }
            return true;
        }
        if __node.localName=="Exponent"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Exponent")
            {
                self.Exponent = __request.getBinary(element: __node,isSwaRef:false, isAttribute:false)
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