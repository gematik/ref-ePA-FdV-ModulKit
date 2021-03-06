//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_UseKeyType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  Sig:String?

    var any=[Any]()

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
                    self.any.append(__request.getAny(node: __node))
                }
            }
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"Sig", url:"")
        {
            self.Sig = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"Sig", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        if self.Sig != nil
        {
            let __SigItemElement=__request.addAttribute(name: "Sig", URI:"", stringValue:"", element:__parent)
            __SigItemElement.stringValue = self.Sig!;
        }
            
        for case let elem as DDXMLNode in self.any
        {
            elem.detach()
            __parent.addChild(elem)
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Sig"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "Sig")
            {
                self.Sig = __node.stringValue!
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