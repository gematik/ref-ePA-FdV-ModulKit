//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_BXIT_CD : EPA_FdV_AUTHZ_CD 
{
    

	/**
	* The quantity in which the bag item occurs in its containing bag.
	*/
    var  qty:NSNumber?

    public required init()
    {
        super.init()
    }
    public override func loadWithXml(__node: DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.loadWithXml(__node:__node, __request: __request)
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"qty", url:"")
        {
            self.qty = EPA_FdV_AUTHZ_Helper.getNumber(stringNumber: EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"qty", url:"")!.stringValue, isDecimal:false)!
        }
    }

    public override func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.serialize(__parent:__parent, __request:__request)
        
            
        if self.qty != nil
        {
            let __qtyItemElement=__request.addAttribute(name: "qty", URI:"", stringValue:"", element:__parent)
            __qtyItemElement.stringValue = EPA_FdV_AUTHZ_Helper.getStringFromNumber(number: self.qty!);
        }

    }

    public override  func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="qty"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "qty")
            {
                self.qty = EPA_FdV_AUTHZ_Helper.getNumber(stringNumber: __node.stringValue, isDecimal:false)!
            }
            return true;
        }
        return super.loadProperty(__node:__node, __request:__request)
    }
}