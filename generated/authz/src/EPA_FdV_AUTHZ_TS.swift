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
* A quantity specifying a point on the axis of natural time.
*                 A point in time is most often represented as a calendar
*                 expression.
*/

public class EPA_FdV_AUTHZ_TS : EPA_FdV_AUTHZ_QTY 
{
    

    var  value:String?

    public required init()
    {
        super.init()
    }
    public override func loadWithXml(__node: DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.loadWithXml(__node:__node, __request: __request)
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"value", url:"")
        {
            self.value = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"value", url:"")!.stringValue!
        }
    }

    public override func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.serialize(__parent:__parent, __request:__request)
        
            
        if self.value != nil
        {
            let __valueItemElement=__request.addAttribute(name: "value", URI:"", stringValue:"", element:__parent)
            __valueItemElement.stringValue = self.value!;
        }

    }

    public override  func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="value"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "value")
            {
                self.value = __node.stringValue!
            }
            return true;
        }
        return super.loadProperty(__node:__node, __request:__request)
    }
}