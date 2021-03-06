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
* A character string that may have a type-tag signifying its
*                 role in the address. Typical parts that exist in about
*                 every address are street, house number, or post box,
*                 postal code, city, country but other roles may be defined
*                 regionally, nationally, or on an enterprise level (e.g. in
*                 military addresses). Addresses are usually broken up into
*                 lines, which are indicated by special line-breaking
*                 delimiter elements (e.g., DEL).
*/

public class EPA_FdV_AUTHZ_ADXP : EPA_FdV_AUTHZ_ST 
{
    

	/**
	* Specifies whether an address part names the street,
	*                             city, country, postal code, post box, etc. If the type
	*                             is NULL the address part is unclassified and would
	*                             simply appear on an address label as is.
	*/
    var  partType:String=""

    public required init()
    {
        super.init()
    }
    public override func loadWithXml(__node: DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.loadWithXml(__node:__node, __request: __request)
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"partType", url:"")
        {
            self.partType = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"partType", url:"")!.stringValue!
        }
    }

    public override func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.serialize(__parent:__parent, __request:__request)
        
            
        let __partTypeItemElement=__request.addAttribute(name: "partType", URI:"", stringValue:"", element:__parent)
        __partTypeItemElement.stringValue = self.partType;    

    }

    public override  func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="partType"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "partType")
            {
                self.partType = __node.stringValue!
            }
            return true;
        }
        return super.loadProperty(__node:__node, __request:__request)
    }
}