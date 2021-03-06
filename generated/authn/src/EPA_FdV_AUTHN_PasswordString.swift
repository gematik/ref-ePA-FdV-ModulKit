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
* This type is used for password elements per Section 4.1.
*/

public class EPA_FdV_AUTHN_PasswordString : EPA_FdV_AUTHN_AttributedString 
{
    

    var  _Type:String=""

    public required init()
    {
        super.init()
    }
    public override func loadWithXml(__node: DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        super.loadWithXml(__node:__node, __request: __request)
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"Type", url:"")
        {
            self._Type = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"Type", url:"")!.stringValue!
        }
    }

    public override func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        super.serialize(__parent:__parent, __request:__request)
        
        let ___TypeElement=__request.addAttribute(name: "Type", URI:"", stringValue:"", element:__parent)
        ___TypeElement.stringValue = self._Type;

    }

    public override  func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Type"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "Type")
            {
                self._Type = __node.stringValue!
            }
            return true;
        }
        return super.loadProperty(__node:__node, __request:__request)
    }
}