//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_InsurantIdType : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

	/**
	* OID for unalterable part of KVNR
	*/
    var  root:String=""

	/**
	* unalterable part of KVNR
	*/
    var  extension:String=""

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
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"root", url:"")
        {
            self.root = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"root", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"extension", url:"")
        {
            self.extension = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"extension", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        
            
        let __rootItemElement=__request.addAttribute(name: "root", URI:"", stringValue:"", element:__parent)
        __rootItemElement.stringValue = self.root;    
            
        let __extensionItemElement=__request.addAttribute(name: "extension", URI:"", stringValue:"", element:__parent)
        __extensionItemElement.stringValue = self.extension;    

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="root"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "root")
            {
                self.root = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="extension"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "extension")
            {
                self.extension = __node.stringValue!
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