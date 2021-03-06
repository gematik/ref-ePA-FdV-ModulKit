//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_TypeValuePairType : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  type:String=""

    var  value:Data=Data()

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
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"type", url:"")
        {
            self.type = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"type", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"value", url:"")
        {
            self.value = __request.getBinary(element: EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"value", url:"")!,isSwaRef:false, isAttribute:true)
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        
            
        let __typeItemElement=__request.addAttribute(name: "type", URI:"", stringValue:"", element:__parent)
        __typeItemElement.stringValue = self.type;    
            
        let __valueItemElement=__request.addAttribute(name: "value", URI:"", stringValue:"", element:__parent)
        __request.setBinary(propertyElement: __valueItemElement, data:self.value, isSwaRef:false, isAttribute:true);    

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="type"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "type")
            {
                self.type = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="value"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "value")
            {
                self.value = __request.getBinary(element: __node,isSwaRef:false, isAttribute:true)
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