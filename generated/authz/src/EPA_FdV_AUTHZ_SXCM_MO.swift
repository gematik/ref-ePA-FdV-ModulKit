//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_SXCM_MO : EPA_FdV_AUTHZ_MO 
{
    

	/**
	* A code specifying whether the set component is included
	*                      (union) or excluded (set-difference) from the set, or
	*                      other set operations with the current set component and
	*                      the set as constructed from the representation stream
	*                      up to the current point.
	*/
    var  _operator:EPA_FdV_AUTHZ_SetOperator?

    public required init()
    {
        super.init()
    }
    public override func loadWithXml(__node: DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.loadWithXml(__node:__node, __request: __request)
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"operator", url:"")
        {
            self._operator = EPA_FdV_AUTHZ_SetOperator.createWithXml(node: EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"operator", url:"")!)!
        }
    }

    public override func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.serialize(__parent:__parent, __request:__request)
        
            
        if self._operator != nil
        {
            let ___operatorItemElement=__request.addAttribute(name: "operator", URI:"", stringValue:"", element:__parent)
            self._operator!.serialize(__parent: ___operatorItemElement);
        }

    }

    public override  func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="operator"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "operator")
            {
                self._operator = EPA_FdV_AUTHZ_SetOperator.createWithXml(node: __node)!
            }
            return true;
        }
        return super.loadProperty(__node:__node, __request:__request)
    }
}