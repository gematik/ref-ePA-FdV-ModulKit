//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_CodedValueType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  code:String=""

    var  codeSystem:String?

    var  codeSystemName:String?

    var  displayName:String?

    var  originalText:String?

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
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"code", url:"")
        {
            self.code = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"code", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"codeSystem", url:"")
        {
            self.codeSystem = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"codeSystem", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"codeSystemName", url:"")
        {
            self.codeSystemName = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"codeSystemName", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"displayName", url:"")
        {
            self.displayName = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"displayName", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"originalText", url:"")
        {
            self.originalText = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"originalText", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        let __codeItemElement=__request.addAttribute(name: "code", URI:"", stringValue:"", element:__parent)
        __codeItemElement.stringValue = self.code;    
            
        if self.codeSystem != nil
        {
            let __codeSystemItemElement=__request.addAttribute(name: "codeSystem", URI:"", stringValue:"", element:__parent)
            __codeSystemItemElement.stringValue = self.codeSystem!;
        }
            
        if self.codeSystemName != nil
        {
            let __codeSystemNameItemElement=__request.addAttribute(name: "codeSystemName", URI:"", stringValue:"", element:__parent)
            __codeSystemNameItemElement.stringValue = self.codeSystemName!;
        }
            
        if self.displayName != nil
        {
            let __displayNameItemElement=__request.addAttribute(name: "displayName", URI:"", stringValue:"", element:__parent)
            __displayNameItemElement.stringValue = self.displayName!;
        }
            
        if self.originalText != nil
        {
            let __originalTextItemElement=__request.addAttribute(name: "originalText", URI:"", stringValue:"", element:__parent)
            __originalTextItemElement.stringValue = self.originalText!;
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="code"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "code")
            {
                self.code = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="codeSystem"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "codeSystem")
            {
                self.codeSystem = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="codeSystemName"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "codeSystemName")
            {
                self.codeSystemName = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="displayName"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "displayName")
            {
                self.displayName = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="originalText"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "originalText")
            {
                self.originalText = __node.stringValue!
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