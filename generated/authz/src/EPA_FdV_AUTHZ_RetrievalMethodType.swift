//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_RetrievalMethodType : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  Transforms:EPA_FdV_AUTHZ_TransformsType?

    var  URI:String=""

    var  _Type:String?

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
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"URI", url:"")
        {
            self.URI = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"URI", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"Type", url:"")
        {
            self._Type = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"Type", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        
            
        let __TransformsItemElement=__request.writeElement(obj: Transforms, type:EPA_FdV_AUTHZ_TransformsType.self, name:"Transforms", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:true)
        if __TransformsItemElement != nil
        {
            self.Transforms!.serialize(__parent: __TransformsItemElement!, __request: __request);
        }
            
        let __URIItemElement=__request.addAttribute(name: "URI", URI:"", stringValue:"", element:__parent)
        __URIItemElement.stringValue = self.URI;    
            
        if self._Type != nil
        {
            let ___TypeItemElement=__request.addAttribute(name: "Type", URI:"", stringValue:"", element:__parent)
            ___TypeItemElement.stringValue = self._Type!;
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Transforms"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Transforms")
            {
                self.Transforms = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_TransformsType.self) as? EPA_FdV_AUTHZ_TransformsType
            }
            return true;
        }
        if __node.localName=="URI"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "URI")
            {
                self.URI = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="Type"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Type")
            {
                self._Type = __node.stringValue!
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