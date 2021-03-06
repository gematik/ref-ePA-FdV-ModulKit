//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_SignatureValueType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  value:Data=Data()

    var  Id:String?

    public required override init()
    {
        super.init()
    }
    public func loadWithXml(__node: DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        __source=__node;

        self.value = __request.getBinary(element: __node,isSwaRef:false, isAttribute:false);
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"Id", url:"")
        {
            self.Id = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"Id", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
        __request.setBinary(propertyElement: __parent, data:self.value, isSwaRef:false, isAttribute:false);
            if self.Id != nil
        {
            let __IdElement=__request.addAttribute(name: "Id", URI:"", stringValue:"", element:__parent)
            __IdElement.stringValue = self.Id!;
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="value"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "value")
            {
                self.value = __request.getBinary(element: __node,isSwaRef:false, isAttribute:false)
            }
            return true;
        }
        if __node.localName=="Id"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "Id")
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