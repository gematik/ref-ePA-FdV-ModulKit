//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_UC_GeschuetzteVersichertendatenXML_RuhenderLeistungsanspruch : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  Beginn:String=""

    var  Ende:String?

	/**
	* Dieses Feld dient ausschließlich zur Angabe des ruhenden Leistungsanpruchs nach § 16 Abs. 3a und § 16 Abs. 1 bis 3 SGB V.
	* Mögliche Ausprägungen des ruhenden Leistungsanspruchs sind:
	* 1 = vollständig
	* 2 = eingeschränkt
	*/
    var  ArtDesRuhens:NSNumber=NSNumber(value:0)

    public required override init()
    {
        super.init()
    }
    public func loadWithXml(__node: DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
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

    public  func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        
            
        let __BeginnItemElement=__request.writeElement(obj: Beginn, type:String.self, name:"Beginn", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:false)
        if __BeginnItemElement != nil
        {
            __BeginnItemElement!.stringValue = self.Beginn;
        }
            
        let __EndeItemElement=__request.writeElement(obj: Ende, type:String.self, name:"Ende", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:true)
        if __EndeItemElement != nil
        {
            __EndeItemElement!.stringValue = self.Ende!;
        }
            
        let __ArtDesRuhensItemElement=__request.writeElement(obj: ArtDesRuhens, type:NSNumber.self, name:"ArtDesRuhens", URI:"http://ws.gematik.de/fa/vsdm/vsd/v5.2", parent:__parent, skipNullProperty:false)
        if __ArtDesRuhensItemElement != nil
        {
            __ArtDesRuhensItemElement!.stringValue = EPA_FdV_AUTHZ_Helper.getStringFromNumber(number: self.ArtDesRuhens);
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="Beginn"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Beginn")
            {
                self.Beginn = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="Ende"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Ende")
            {
                self.Ende = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="ArtDesRuhens"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "ArtDesRuhens")
            {
                self.ArtDesRuhens = EPA_FdV_AUTHZ_Helper.getNumber(stringNumber: __node.stringValue, isDecimal:false)!
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