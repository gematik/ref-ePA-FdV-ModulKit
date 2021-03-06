//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation

/**
* This type represents a username token per Section 4.1
*/

public class EPA_FdV_AUTHN_UsernameTokenType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  Username:EPA_FdV_AUTHN_AttributedString=EPA_FdV_AUTHN_AttributedString()

	/**
	* This global attribute supports annotating arbitrary elements with an ID.
	*/
    var  Id:String=""

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
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"Id", url:"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd")
        {
            self.Id = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"Id", url:"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        let __UsernameItemElement=__request.writeElement(obj: Username, type:EPA_FdV_AUTHN_AttributedString.self, name:"Username", URI:"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd", parent:__parent, skipNullProperty:false)
        if __UsernameItemElement != nil
        {
            self.Username.serialize(__parent: __UsernameItemElement!, __request: __request);
        }
            
        let __IdItemElement=__request.addAttribute(name: "Id", URI:"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd", stringValue:"", element:__parent)
        __IdItemElement.stringValue = self.Id;    
            
        for case let elem as DDXMLNode in self.any
        {
            elem.detach()
            __parent.addChild(elem)
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Username"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "Username")
            {
                self.Username = try! __request.createObject(node: __node, type:EPA_FdV_AUTHN_AttributedString.self) as! EPA_FdV_AUTHN_AttributedString
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