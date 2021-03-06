//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_EncryptionPropertyType : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  Target:String?

    var  Id:String?

    var any=[Any]()

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
                    self.any.append(__request.getAny(node: __node))
                }
            }
        }
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"Target", url:"")
        {
            self.Target = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"Target", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"Id", url:"")
        {
            self.Id = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"Id", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        
            
        if self.Target != nil
        {
            let __TargetItemElement=__request.addAttribute(name: "Target", URI:"", stringValue:"", element:__parent)
            __TargetItemElement.stringValue = self.Target!;
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

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Target"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Target")
            {
                self.Target = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="Id"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Id")
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