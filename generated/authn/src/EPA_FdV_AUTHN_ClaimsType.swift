//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_ClaimsType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  Dialect:String?

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
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"Dialect", url:"")
        {
            self.Dialect = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"Dialect", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        if self.Dialect != nil
        {
            let __DialectItemElement=__request.addAttribute(name: "Dialect", URI:"", stringValue:"", element:__parent)
            __DialectItemElement.stringValue = self.Dialect!;
        }
            
        for case let elem as DDXMLNode in self.any
        {
            elem.detach()
            __parent.addChild(elem)
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Dialect"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "Dialect")
            {
                self.Dialect = __node.stringValue!
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