//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_StatusType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  Code:String=""

    var  Reason:String?

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
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        let __CodeItemElement=__request.writeElement(obj: Code, type:String.self, name:"Code", URI:"http://docs.oasis-open.org/ws-sx/ws-trust/200512", parent:__parent, skipNullProperty:false)
        if __CodeItemElement != nil
        {
            __CodeItemElement!.stringValue = self.Code;
        }
            
        let __ReasonItemElement=__request.writeElement(obj: Reason, type:String.self, name:"Reason", URI:"http://docs.oasis-open.org/ws-sx/ws-trust/200512", parent:__parent, skipNullProperty:true)
        if __ReasonItemElement != nil
        {
            __ReasonItemElement!.stringValue = self.Reason!;
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Code"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "Code")
            {
                self.Code = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="Reason"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "Reason")
            {
                self.Reason = __node.stringValue!
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