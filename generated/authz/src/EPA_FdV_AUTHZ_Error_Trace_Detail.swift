//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_Error_Trace_Detail : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  value:String=""

    var  Encoding:String=""

    public required override init()
    {
        super.init()
    }
    public func loadWithXml(__node: DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        __source=__node;

        self.value = __node.stringValue!;
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"Encoding", url:"")
        {
            self.Encoding = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"Encoding", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        
        __parent.stringValue = self.value;
        let __EncodingElement=__request.addAttribute(name: "Encoding", URI:"", stringValue:"", element:__parent)
        __EncodingElement.stringValue = self.Encoding;

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="value"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "value")
            {
                self.value = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="Encoding"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Encoding")
            {
                self.Encoding = __node.stringValue!
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