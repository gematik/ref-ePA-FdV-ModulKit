//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_HXIT_CE : EPA_FdV_AUTHZ_CE 
{
    

	/**
	* The time interval during which the given information
	*                         was, is, or is expected to be valid. The interval can
	*                         be open or closed, as well as infinite or undefined on
	*                         either side.
	*/
    var  validTime:EPA_FdV_AUTHZ_IVL_TS?

    public required init()
    {
        super.init()
    }

    public override func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.serialize(__parent:__parent, __request:__request)
        
            
        let __validTimeItemElement=__request.writeElement(obj: validTime, type:EPA_FdV_AUTHZ_IVL_TS.self, name:"validTime", URI:"urn:hl7-org:v3", parent:__parent, skipNullProperty:true)
        if __validTimeItemElement != nil
        {
            self.validTime!.serialize(__parent: __validTimeItemElement!, __request: __request);
        }

    }

    public override  func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="validTime"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "validTime")
            {
                self.validTime = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_IVL_TS.self) as? EPA_FdV_AUTHZ_IVL_TS
            }
            return true;
        }
        return super.loadProperty(__node:__node, __request:__request)
    }
}