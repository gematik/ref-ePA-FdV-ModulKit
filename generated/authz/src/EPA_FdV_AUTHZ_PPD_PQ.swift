//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_PPD_PQ : EPA_FdV_AUTHZ_PQ 
{
    

	/**
	* The primary measure of variance/uncertainty of the
	*                         value (the square root of the sum of the squares of
	*                         the differences between all data points and the mean).
	*                         The standard deviation is used to normalize the data
	*                         for computing the distribution function. Applications
	*                         that cannot deal with probability distributions can
	*                         still get an idea about the confidence level by looking
	*                         at the standard deviation.
	*/
    var  standardDeviation:EPA_FdV_AUTHZ_PQ?

	/**
	* A code specifying the type of probability distribution.
	*                      Possible values are as shown in the attached table.
	*                      The NULL value (unknown) for the type code indicates
	*                      that the probability distribution type is unknown. In
	*                      that case, the standard deviation has the meaning of an
	*                      informal guess.
	*/
    var  distributionType:EPA_FdV_AUTHZ_ProbabilityDistributionType?

    public required init()
    {
        super.init()
    }
    public override func loadWithXml(__node: DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.loadWithXml(__node:__node, __request: __request)
        if EPA_FdV_AUTHZ_Helper.hasAttribute(node: __node, name:"distributionType", url:"")
        {
            self.distributionType = EPA_FdV_AUTHZ_ProbabilityDistributionType.createWithXml(node: EPA_FdV_AUTHZ_Helper.getAttribute(node: __node, name:"distributionType", url:"")!)!
        }
    }

    public override func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.serialize(__parent:__parent, __request:__request)
        
            
        let __standardDeviationItemElement=__request.writeElement(obj: standardDeviation, type:EPA_FdV_AUTHZ_PQ.self, name:"standardDeviation", URI:"urn:hl7-org:v3", parent:__parent, skipNullProperty:true)
        if __standardDeviationItemElement != nil
        {
            self.standardDeviation!.serialize(__parent: __standardDeviationItemElement!, __request: __request);
        }
            
        if self.distributionType != nil
        {
            let __distributionTypeItemElement=__request.addAttribute(name: "distributionType", URI:"", stringValue:"", element:__parent)
            self.distributionType!.serialize(__parent: __distributionTypeItemElement);
        }

    }

    public override  func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="standardDeviation"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "standardDeviation")
            {
                self.standardDeviation = try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_PQ.self) as? EPA_FdV_AUTHZ_PQ
            }
            return true;
        }
        if __node.localName=="distributionType"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "distributionType")
            {
                self.distributionType = EPA_FdV_AUTHZ_ProbabilityDistributionType.createWithXml(node: __node)!
            }
            return true;
        }
        return super.loadProperty(__node:__node, __request:__request)
    }
}