//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_PolicyReference : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  URI:String=""

    var  Digest:Data=Data()

    var  DigestAlgorithm:String=""

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
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"URI", url:"")
        {
            self.URI = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"URI", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"Digest", url:"")
        {
            self.Digest = __request.getBinary(element: EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"Digest", url:"")!,isSwaRef:false, isAttribute:true)
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"DigestAlgorithm", url:"")
        {
            self.DigestAlgorithm = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"DigestAlgorithm", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        let __URIItemElement=__request.addAttribute(name: "URI", URI:"", stringValue:"", element:__parent)
        __URIItemElement.stringValue = self.URI;    
            
        let __DigestItemElement=__request.addAttribute(name: "Digest", URI:"", stringValue:"", element:__parent)
        __request.setBinary(propertyElement: __DigestItemElement, data:self.Digest, isSwaRef:false, isAttribute:true);    
            
        let __DigestAlgorithmItemElement=__request.addAttribute(name: "DigestAlgorithm", URI:"", stringValue:"", element:__parent)
        __DigestAlgorithmItemElement.stringValue = self.DigestAlgorithm;    

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="URI"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "URI")
            {
                self.URI = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="Digest"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "Digest")
            {
                self.Digest = __request.getBinary(element: __node,isSwaRef:false, isAttribute:true)
            }
            return true;
        }
        if __node.localName=="DigestAlgorithm"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "DigestAlgorithm")
            {
                self.DigestAlgorithm = __node.stringValue!
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