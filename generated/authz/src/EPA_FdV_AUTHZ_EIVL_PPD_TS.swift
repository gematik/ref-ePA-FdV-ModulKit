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
* Note: because this type is defined as an extension of SXCM_T,
*             all of the attributes and elements accepted for T are also
*             accepted by this definition.  However, they are NOT allowed
*             by the normative description of this type.  Unfortunately,
*             we cannot write a general purpose schematron contraints to
*             provide that extra validation, thus applications must be
*             aware that instance (fragments) that pass validation with
*             this might might still not be legal.
*/

public class EPA_FdV_AUTHZ_EIVL_PPD_TS : EPA_FdV_AUTHZ_SXCM_PPD_TS 
{
    

	/**
	* A code for a common (periodical) activity of daily
	*                         living based on which the event related periodic
	*                         interval is specified.
	*/
    var  _event:EPA_FdV_AUTHZ_EIVL_x002E_event?

	/**
	* An interval of elapsed time (duration, not absolute
	*                         point in time) that marks the offsets for the
	*                         beginning, width and end of the event-related periodic
	*                         interval measured from the time each such event
	*                         actually occurred.
	*/
    var  offset:EPA_FdV_AUTHZ_IVL_PPD_PQ?

    public required init()
    {
        super.init()
    }

    public override func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.serialize(__parent:__parent, __request:__request)
        
            
        let ___eventItemElement=__request.writeElement(obj: _event, type:EPA_FdV_AUTHZ_EIVL_x002E_event.self, name:"event", URI:"urn:hl7-org:v3", parent:__parent, skipNullProperty:true)
        if ___eventItemElement != nil
        {
            self._event!.serialize(__parent: ___eventItemElement!, __request: __request);
        }
            
        let __offsetItemElement=__request.writeElement(obj: offset, type:EPA_FdV_AUTHZ_IVL_PPD_PQ.self, name:"offset", URI:"urn:hl7-org:v3", parent:__parent, skipNullProperty:true)
        if __offsetItemElement != nil
        {
            self.offset!.serialize(__parent: __offsetItemElement!, __request: __request);
        }

    }

    public override  func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="event"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "event")
            {
                self._event = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_EIVL_x002E_event.self) as? EPA_FdV_AUTHZ_EIVL_x002E_event
            }
            return true;
        }
        if __node.localName=="offset"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "offset")
            {
                self.offset = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_IVL_PPD_PQ.self) as? EPA_FdV_AUTHZ_IVL_PPD_PQ
            }
            return true;
        }
        return super.loadProperty(__node:__node, __request:__request)
    }
}