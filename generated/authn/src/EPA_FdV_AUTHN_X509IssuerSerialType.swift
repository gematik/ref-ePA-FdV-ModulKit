//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHN_X509IssuerSerialType : NSObject ,EPA_FdV_AUTHN_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  X509IssuerName:String=""

    var  X509SerialNumber:NSNumber=NSNumber(value:0)

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
                }
            }
        }
    }

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHN_RequestResultHandler)
    {
        
            
        let __X509IssuerNameItemElement=__request.writeElement(obj: X509IssuerName, type:String.self, name:"X509IssuerName", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:false)
        if __X509IssuerNameItemElement != nil
        {
            __X509IssuerNameItemElement!.stringValue = self.X509IssuerName;
        }
            
        let __X509SerialNumberItemElement=__request.writeElement(obj: X509SerialNumber, type:NSNumber.self, name:"X509SerialNumber", URI:"http://www.w3.org/2000/09/xmldsig#", parent:__parent, skipNullProperty:false)
        if __X509SerialNumberItemElement != nil
        {
            __X509SerialNumberItemElement!.stringValue = EPA_FdV_AUTHN_Helper.getStringFromNumber(number: self.X509SerialNumber);
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHN_RequestResultHandler ) -> Bool
    {
        if __node.localName=="X509IssuerName"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "X509IssuerName")
            {
                self.X509IssuerName = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="X509SerialNumber"
        {
            if EPA_FdV_AUTHN_Helper.isValue(node:__node, name: "X509SerialNumber")
            {
                self.X509SerialNumber = EPA_FdV_AUTHN_Helper.getNumber(stringNumber: __node.stringValue, isDecimal:false)!
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