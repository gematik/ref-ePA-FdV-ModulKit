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
* A concept descriptor represents any kind of concept usually
*                 by giving a code defined in a code system.  A concept
*                 descriptor can contain the original text or phrase that
*                 served as the basis of the coding and one or more
*                 translations into different coding systems. A concept
*                 descriptor can also contain qualifiers to describe, e.g.,
*                 the concept of a "left foot" as a postcoordinated term built
*                 from the primary code "FOOT" and the qualifier "LEFT".
*                 In exceptional cases, the concept descriptor need not
*                 contain a code but only the original text describing
*                 that concept.
*/

public class EPA_FdV_AUTHZ_CD : EPA_FdV_AUTHZ_ANY 
{
    

	/**
	* The text or phrase used as the basis for the coding.
	*/
    var  originalText:EPA_FdV_AUTHZ_ED?

	/**
	* Specifies additional codes that increase the
	*                                 specificity of the primary code.
	*/
    var qualifier:[EPA_FdV_AUTHZ_CR?]? = []

	/**
	* A set of other concept descriptors that translate
	*                                 this concept descriptor into other code systems.
	*/
    var translation:[EPA_FdV_AUTHZ_CD?]? = []

	/**
	* The plain code symbol defined by the code system.
	*                             For example, "784.0" is the code symbol of the ICD-9
	*                             code "784.0" for headache.
	*/
    var  code:String?

	/**
	* Specifies the code system that defines the code.
	*/
    var  codeSystem:String?

	/**
	* A common name of the coding system.
	*/
    var  codeSystemName:String?

	/**
	* If applicable, a version descriptor defined
	*                             specifically for the given code system.
	*/
    var  codeSystemVersion:String?

	/**
	* A name or title for the code, under which the sending
	*                             system shows the code value to its users.
	*/
    var  displayName:String?

    public required init()
    {
        super.init()
    }
    public override func loadWithXml(__node: DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.loadWithXml(__node:__node, __request: __request)
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"code", url:"")
        {
            self.code = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"code", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"codeSystem", url:"")
        {
            self.codeSystem = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"codeSystem", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"codeSystemName", url:"")
        {
            self.codeSystemName = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"codeSystemName", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"codeSystemVersion", url:"")
        {
            self.codeSystemVersion = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"codeSystemVersion", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"displayName", url:"")
        {
            self.displayName = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"displayName", url:"")!.stringValue!
        }
    }

    public override func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.serialize(__parent:__parent, __request:__request)
        
            
        let __originalTextItemElement=__request.writeElement(obj: originalText, type:EPA_FdV_AUTHZ_ED.self, name:"originalText", URI:"urn:hl7-org:v3", parent:__parent, skipNullProperty:true)
        if __originalTextItemElement != nil
        {
            self.originalText!.serialize(__parent: __originalTextItemElement!, __request: __request);
        }
            
        if self.qualifier != nil
        {
            for __item in self.qualifier!
            {
                let __qualifierItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHZ_CR.self, name:"qualifier", URI:"urn:hl7-org:v3", parent:__parent, skipNullProperty:false)
                if __qualifierItemElement != nil
                {
                    __item!.serialize(__parent: __qualifierItemElement!, __request: __request);
                }
            }
        }
            
        if self.translation != nil
        {
            for __item in self.translation!
            {
                let __translationItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHZ_CD.self, name:"translation", URI:"urn:hl7-org:v3", parent:__parent, skipNullProperty:false)
                if __translationItemElement != nil
                {
                    __item!.serialize(__parent: __translationItemElement!, __request: __request);
                }
            }
        }
            
        if self.code != nil
        {
            let __codeItemElement=__request.addAttribute(name: "code", URI:"", stringValue:"", element:__parent)
            __codeItemElement.stringValue = self.code!;
        }
            
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
            
        if self.codeSystemVersion != nil
        {
            let __codeSystemVersionItemElement=__request.addAttribute(name: "codeSystemVersion", URI:"", stringValue:"", element:__parent)
            __codeSystemVersionItemElement.stringValue = self.codeSystemVersion!;
        }
            
        if self.displayName != nil
        {
            let __displayNameItemElement=__request.addAttribute(name: "displayName", URI:"", stringValue:"", element:__parent)
            __displayNameItemElement.stringValue = self.displayName!;
        }

    }

    public override  func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="originalText"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "originalText")
            {
                self.originalText = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_ED.self) as? EPA_FdV_AUTHZ_ED
            }
            return true;
        }
        if __node.localName=="qualifier"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "qualifier")
            {
                if self.qualifier == nil
                {
                    self.qualifier = []
                }
                self.qualifier!.append(try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_CR.self) as? EPA_FdV_AUTHZ_CR)
            }
            return true;
        }
        if __node.localName=="translation"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "translation")
            {
                if self.translation == nil
                {
                    self.translation = []
                }
                self.translation!.append(try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_CD.self) as? EPA_FdV_AUTHZ_CD)
            }
            return true;
        }
        if __node.localName=="code"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "code")
            {
                self.code = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="codeSystem"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "codeSystem")
            {
                self.codeSystem = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="codeSystemName"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "codeSystemName")
            {
                self.codeSystemName = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="codeSystemVersion"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "codeSystemVersion")
            {
                self.codeSystemVersion = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="displayName"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "displayName")
            {
                self.displayName = __node.stringValue!
            }
            return true;
        }
        return super.loadProperty(__node:__node, __request:__request)
    }
}