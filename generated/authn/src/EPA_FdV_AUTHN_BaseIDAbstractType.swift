//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_BaseIDAbstractType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  NameQualifier:String?

    var  SPNameQualifier:String?

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
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"NameQualifier", url:"")
        {
            self.NameQualifier = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"NameQualifier", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"SPNameQualifier", url:"")
        {
            self.SPNameQualifier = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"SPNameQualifier", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        if self.NameQualifier != nil
        {
            let __NameQualifierItemElement=__request.addAttribute(name: "NameQualifier", URI:"", stringValue:"", element:__parent)
            __NameQualifierItemElement.stringValue = self.NameQualifier!;
        }
            
        if self.SPNameQualifier != nil
        {
            let __SPNameQualifierItemElement=__request.addAttribute(name: "SPNameQualifier", URI:"", stringValue:"", element:__parent)
            __SPNameQualifierItemElement.stringValue = self.SPNameQualifier!;
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="NameQualifier"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "NameQualifier")
            {
                self.NameQualifier = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="SPNameQualifier"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "SPNameQualifier")
            {
                self.SPNameQualifier = __node.stringValue!
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