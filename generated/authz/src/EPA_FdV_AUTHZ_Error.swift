//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------

import Foundation


public class EPA_FdV_AUTHZ_Error : NSObject ,EPA_FdV_AUTHZ_ISerializableObject
{
    private var  __source:DDXMLNode? = nil
    

    var  MessageID:String=""

    var  Timestamp:Date=Date()

    var Trace:[EPA_FdV_AUTHZ_Error_Trace?]? = []

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
        
            
        let __MessageIDItemElement=__request.writeElement(obj: MessageID, type:String.self, name:"MessageID", URI:"http://ws.gematik.de/tel/error/v2.0", parent:__parent, skipNullProperty:false)
        if __MessageIDItemElement != nil
        {
            __MessageIDItemElement!.stringValue = self.MessageID;
        }
            
        let __TimestampItemElement=__request.writeElement(obj: Timestamp, type:Date.self, name:"Timestamp", URI:"http://ws.gematik.de/tel/error/v2.0", parent:__parent, skipNullProperty:false)
        if __TimestampItemElement != nil
        {
            __TimestampItemElement!.stringValue = EPA_FdV_AUTHZ_Helper.getStringFromDateTime(date: self.Timestamp);
        }
            
        if self.Trace != nil
        {
            for __item in self.Trace!
            {
                let __TraceItemElement=__request.writeElement(obj: __item, type:EPA_FdV_AUTHZ_Error_Trace.self, name:"Trace", URI:"http://ws.gematik.de/tel/error/v2.0", parent:__parent, skipNullProperty:false)
                if __TraceItemElement != nil
                {
                    __item!.serialize(__parent: __TraceItemElement!, __request: __request);
                }
            }
        }

    }

    public   func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        if __node.localName=="MessageID"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "MessageID")
            {
                self.MessageID = __node.stringValue!
            }
            return true;
        }
        if __node.localName=="Timestamp"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Timestamp")
            {
                self.Timestamp = EPA_FdV_AUTHZ_Helper.getDate(stringDate: __node.stringValue)!
            }
            return true;
        }
        if __node.localName=="Trace"
        {
            if EPA_FdV_AUTHZ_Helper.isValue(node:__node, name: "Trace")
            {
                if self.Trace == nil
                {
                    self.Trace = []
                }
                self.Trace!.append(try! __request.createObject(node: __node, type:EPA_FdV_AUTHZ_Error_Trace.self) as? EPA_FdV_AUTHZ_Error_Trace)
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