//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_SPKIDataType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var SPKISexp:[Data?]? = []

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
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        if self.SPKISexp != nil
        {
            for __item in self.SPKISexp!
            {
                let __SPKISexpItemElement=__request.writeElement(obj: __item, type:Data.self, name:"SPKISexp", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:false)
                if __SPKISexpItemElement != nil
                {
                    __request.setBinary(propertyElement: __SPKISexpItemElement!, data:__item!, isSwaRef:false, isAttribute:false);
                }
            }
        }
            
        for case let elem as DDXMLNode in self.any
        {
            elem.detach()
            __parent.addChild(elem)
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="SPKISexp"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "SPKISexp")
            {
                if self.SPKISexp == nil
                {
                    self.SPKISexp = []
                }
                self.SPKISexp!.append(__request.getBinary(element: __node,isSwaRef:false, isAttribute:false))
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