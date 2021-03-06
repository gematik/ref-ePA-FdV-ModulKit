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
* Actual content model is non-deterministic, hence wildcard. The following shows intended content model:
* 
*         <xs:element ref='wst:TokenType' minOccurs='0' />
*         <xs:element ref='wst:RequestType' />
*         <xs:element ref='wst:SecondaryParameters' minOccurs='0' />         
*         <xs:element ref='wsp:AppliesTo' minOccurs='0' />
*         <xs:element ref='wst:Claims' minOccurs='0' />
*         <xs:element ref='wst:Entropy' minOccurs='0' />
*         <xs:element ref='wst:Lifetime' minOccurs='0' />
*         <xs:element ref='wst:AllowPostdating' minOccurs='0' />
*         <xs:element ref='wst:Renewing' minOccurs='0' />
*         <xs:element ref='wst:OnBehalfOf' minOccurs='0' />
*         <xs:element ref='wst:Issuer' minOccurs='0' />
*         <xs:element ref='wst:AuthenticationType' minOccurs='0' />
*         <xs:element ref='wst:KeyType' minOccurs='0' />
*         <xs:element ref='wst:KeySize' minOccurs='0' />
*         <xs:element ref='wst:SignatureAlgorithm' minOccurs='0' />
*         <xs:element ref='wst:Encryption' minOccurs='0' />
*         <xs:element ref='wst:EncryptionAlgorithm' minOccurs='0' />
*         <xs:element ref='wst:CanonicalizationAlgorithm' minOccurs='0' />
*         <xs:element ref='wst:ProofEncryption' minOccurs='0' />
*         <xs:element ref='wst:UseKey' minOccurs='0' />
*         <xs:element ref='wst:SignWith' minOccurs='0' />
*         <xs:element ref='wst:EncryptWith' minOccurs='0' />
*         <xs:element ref='wst:DelegateTo' minOccurs='0' />
*         <xs:element ref='wst:Forwardable' minOccurs='0' />
*         <xs:element ref='wst:Delegatable' minOccurs='0' />
*         <xs:element ref='wsp:Policy' minOccurs='0' />
*         <xs:element ref='wsp:PolicyReference' minOccurs='0' />
*         <xs:any namespace='##other' processContents='lax' minOccurs='0' maxOccurs='unbounded' />
*/

public class EPA_FdV_AUTHN_RequestSecurityTokenType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  Context:String?

    var any=[Any]()

    public required override init()
    {
        super.init()
    }
    public func loadWithXml(__node: DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        __source=__node;
        for i :UInt in 0 ..< __node.childCount
        {
            let node=__node.child(at:i)
            if node?.kind==UInt(XMLElementKind)
            {
                let __node=node as! DDXMLElement
                if loadProperty(__node:__node, __request:__request) == false
                {
                    self.any.append(__request.getAny(node: __node))
                }
            }
        }
        if EPA_FdV_AUTHN_Helper.hasAttribute(node: __node, name:"Context", url:"")
        {
            self.Context = EPA_FdV_AUTHN_Helper.getAttribute(node: __node, name:"Context", url:"")!.stringValue!
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        if self.Context != nil
        {
            let __ContextItemElement=__request.addAttribute(name: "Context", URI:"", stringValue:"", element:__parent)
            __ContextItemElement.stringValue = self.Context!;
        }
            
        for case let elem as DDXMLNode in self.any
        {
            elem.detach()
            __parent.addChild(elem)
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Context"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "Context")
            {
                self.Context = __node.stringValue!
            }
            return true;
        }
        return false
    }
    public func getOriginalXmlSource() ->DDXMLNode? 
    {
        return __source
    }
}