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

public class EPA_FdV_AUTHZ_PIVL_PPD_TS : EPA_FdV_AUTHZ_SXCM_PPD_TS 
{
    

	/**
	* A prototype of the repeating interval specifying the
	*                         duration of each occurrence and anchors the periodic
	*                         interval sequence at a certain point in time.
	*/
    var  phase:EPA_FdV_AUTHZ_IVL_PPD_TS?

	/**
	* A time duration specifying a reciprocal measure of
	*                         the frequency at which the periodic interval repeats.
	*/
    var  period:EPA_FdV_AUTHZ_PPD_PQ?

	/**
	* Specifies if and how the repetitions are aligned to
	*                      the cycles of the underlying calendar (e.g., to
	*                      distinguish every 30 days from "the 5th of every
	*                      month".) A non-aligned periodic interval recurs
	*                      independently from the calendar. An aligned periodic
	*                      interval is synchronized with the calendar.
	*/
    var  alignment:String?

	/**
	* Indicates whether the exact timing is up to the party
	*                      executing the schedule (e.g., to distinguish "every 8
	*                      hours" from "3 times a day".)
	*/
    var  institutionSpecified:Bool?

    public required init()
    {
        super.init()
    }
    public override func loadWithXml(__node: DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.loadWithXml(__node:__node, __request: __request)
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"alignment", url:"")
        {
            self.alignment = EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"alignment", url:"")!.stringValue!
        }
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"institutionSpecified", url:"")
        {
            self.institutionSpecified = EPA_FdV_AUTHZ_Helper.toBoolFromString(str: EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"institutionSpecified", url:"")!.stringValue!)
        }
    }

    public override func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.serialize(__parent:__parent, __request:__request)
        
            
        let __phaseItemElement=__request.writeElement(obj: phase, type:EPA_FdV_AUTHZ_IVL_PPD_TS.self, name:"phase", URI:"urn:hl7-org:v3", parent:__parent, skipNullProperty:true)
        if __phaseItemElement != nil
        {
            self.phase!.serialize(__parent: __phaseItemElement!, __request: __request);
        }
            
        let __periodItemElement=__request.writeElement(obj: period, type:EPA_FdV_AUTHZ_PPD_PQ.self, name:"period", URI:"urn:hl7-org:v3", parent:__parent, skipNullProperty:true)
        if __periodItemElement != nil
        {
            self.period!.serialize(__parent: __periodItemElement!, __request: __request);
        }
            
        if self.alignment != nil
        {
            let __alignmentItemElement=__request.addAttribute(name: "alignment", URI:"", stringValue:"", element:__parent)
            __alignmentItemElement.stringValue = self.alignment!;
        }
            
        if self.institutionSpecified != nil
        {
            let __institutionSpecifiedItemElement=__request.addAttribute(name: "institutionSpecified", URI:"", stringValue:"", element:__parent)
            __institutionSpecifiedItemElement.stringValue = EPA_FdV_AUTHZ_Helper.toBoolStringFromNumber(boolNumber: self.institutionSpecified! as NSNumber);
        }

    }

    public override  func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="phase"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "phase")
            {
                self.phase = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_IVL_PPD_TS.self) as? EPA_FdV_AUTHZ_IVL_PPD_TS
            }
            return true;
        }
        if __node.localName=="period"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "period")
            {
                self.period = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_PPD_PQ.self) as? EPA_FdV_AUTHZ_PPD_PQ
            }
            return true;
        }
        if __node.localName=="alignment"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "alignment")
            {
                self.alignment = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="institutionSpecified"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "institutionSpecified")
            {
                self.institutionSpecified = EPA_FdV_AUTHZ_Helper.toBoolFromString(str: __node.stringValue!)
            }
            return true;
        }
        return super.loadProperty(__node:__node, __request:__request)
    }
}