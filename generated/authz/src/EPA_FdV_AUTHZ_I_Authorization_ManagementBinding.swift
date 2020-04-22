//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------


open class EPA_FdV_AUTHZ_I_Authorization_ManagementBinding:NSObject
{
    var Url:String? = "http://unspecified"
    var EnableLogging:Bool=false
    var Headers=[String:String]()
    var ShouldAddAdornments=true
    var Username:String?
    var Password:String?
    var CreateClassesForAny:Bool=false
    public override init()
    {

    }

    public init(url:String?)
    {
        Url=url
    }

    func sendImplementation(request:URLRequest, requestMgr:EPA_FdV_AUTHZ_RequestResultHandler) throws
    {
        try requestMgr.sendImplementation(request: request)
    }
    func sendImplementation(request:URLRequest, requestMgr:EPA_FdV_AUTHZ_RequestResultHandler, callbackDelegate: @escaping (EPA_FdV_AUTHZ_RequestResultHandler) -> ()) throws
    {
        try requestMgr.sendImplementation(request: request, callbackDelegate:callbackDelegate)
    }
    func CreateRequestResultHandler() -> EPA_FdV_AUTHZ_RequestResultHandler
    {
        let handler = EPA_FdV_AUTHZ_RequestResultHandler(version: EPA_FdV_AUTHZ_RequestResultHandler.SOAPVERSION_12)
            handler.CreateClassesForAny = self.CreateClassesForAny
        handler.EnableLogging = EnableLogging
        return handler
    }

    func createRequest(__soapAction:String, __request:EPA_FdV_AUTHZ_RequestResultHandler)  -> URLRequest
    {
        let __url = URL(string: Url!)
        var __requestObj = URLRequest(url: __url!)

        __request.prepareRequest(__requestObj: &__requestObj)

        __requestObj.addValue(__soapAction,forHTTPHeaderField:"SOAPAction")

        for (key,value) in self.Headers
        {
            __requestObj.addValue(value, forHTTPHeaderField:key)
        }
        __requestObj.httpMethod="POST"

        if Username != nil
        {
            let authStr = String(format:"%@:%@", self.Username!,self.Password!)
            let authData = authStr.data(using:String.Encoding.ascii)
            let authValue = String(format:"Basic %@", EPA_FdV_AUTHZ_Helper.base64forData(data: authData!))
            __requestObj.setValue(authValue, forHTTPHeaderField:"Authorization")
        }
        return __requestObj
    }

    func addAdornments(__methodElement:DDXMLElement)
    {
        if ShouldAddAdornments
        {
            __methodElement.addAttribute(DDXMLNode.attribute(withName:"id" ,stringValue:"o0") as! DDXMLNode)
            __methodElement.addAttribute(DDXMLNode.attribute(withName:"c:root", stringValue:"1") as! DDXMLNode)
        }
    }
    func createPutAuthorizationKeyRequest(AuthorizationKey:EPA_FdV_AUTHZ_AuthorizationKeyType, RecordIdentifier:EPA_FdV_AUTHZ_RecordIdentifierType, DeviceID:EPA_FdV_AUTHZ_DeviceIdType?, NotificationInfoRepresentative:String?, __request:EPA_FdV_AUTHZ_RequestResultHandler)  -> URLRequest
    {
        let __methodElement = __request.writeElement(name: "PutAuthorizationKey", URI:"http://ws.gematik.de/fd/phrs/AuthorizationService/v1.1", parent:__request.Body!)
        addAdornments(__methodElement: __methodElement)
            
        let __AuthorizationKeyItemElement=__request.writeElement(obj: AuthorizationKey, type:EPA_FdV_AUTHZ_AuthorizationKeyType.self, name:"AuthorizationKey", URI:"http://ws.gematik.de/fd/phrs/AuthorizationService/v1.1", parent:__methodElement, skipNullProperty:false)
        if __AuthorizationKeyItemElement != nil
        {
            AuthorizationKey.serialize(__parent: __AuthorizationKeyItemElement!, __request: __request);
        }
            
        let __RecordIdentifierItemElement=__request.writeElement(obj: RecordIdentifier, type:EPA_FdV_AUTHZ_RecordIdentifierType.self, name:"RecordIdentifier", URI:"http://ws.gematik.de/fd/phrs/AuthorizationService/v1.1", parent:__methodElement, skipNullProperty:false)
        if __RecordIdentifierItemElement != nil
        {
            RecordIdentifier.serialize(__parent: __RecordIdentifierItemElement!, __request: __request);
        }
            
        let __DeviceIDItemElement=__request.writeElement(obj: DeviceID, type:EPA_FdV_AUTHZ_DeviceIdType.self, name:"DeviceID", URI:"http://ws.gematik.de/fd/phrs/AuthorizationService/v1.1", parent:__methodElement, skipNullProperty:true)
        if __DeviceIDItemElement != nil
        {
            DeviceID!.serialize(__parent: __DeviceIDItemElement!, __request: __request);
        }
            
        let __NotificationInfoRepresentativeItemElement=__request.writeElement(obj: NotificationInfoRepresentative, type:String.self, name:"NotificationInfoRepresentative", URI:"http://ws.gematik.de/fd/phrs/AuthorizationService/v1.1", parent:__methodElement, skipNullProperty:true)
        if __NotificationInfoRepresentativeItemElement != nil
        {
            __NotificationInfoRepresentativeItemElement!.stringValue = NotificationInfoRepresentative!;
        }
        let __requestObj = createRequest(__soapAction: "http://ws.gematik.de/fd/phrs/AuthorizationService/v1.0#PutAuthorizationKey", __request:__request)
        return __requestObj;
    }

    @discardableResult public func PutAuthorizationKeyAsync(AuthorizationKey:EPA_FdV_AUTHZ_AuthorizationKeyType, RecordIdentifier:EPA_FdV_AUTHZ_RecordIdentifierType, DeviceID:EPA_FdV_AUTHZ_DeviceIdType?, NotificationInfoRepresentative:String?, callbackDelegate: @escaping (AnyObject?) -> ()) throws -> EPA_FdV_AUTHZ_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createPutAuthorizationKeyRequest(AuthorizationKey: AuthorizationKey, RecordIdentifier: RecordIdentifier, DeviceID: DeviceID, NotificationInfoRepresentative: NotificationInfoRepresentative, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            var __res:AnyObject?
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHZ_Helper.getResultElement(body: __request.OutputBody!, name:"PutAuthorizationKeyResponse")
                __res = __request.getAnyTypeValue(node: __result) as AnyObject;
            }
            else
            {
                __res = __requestMgr.OutputFault! as AnyObject
            }
            callbackDelegate(__res)
        })
        return __request;
    }

    @discardableResult public func PutAuthorizationKeyAsync(AuthorizationKey:EPA_FdV_AUTHZ_AuthorizationKeyType, RecordIdentifier:EPA_FdV_AUTHZ_RecordIdentifierType, DeviceID:EPA_FdV_AUTHZ_DeviceIdType?, NotificationInfoRepresentative:String?, __target:EPA_FdV_AUTHZ_SoapServiceResponse) throws -> EPA_FdV_AUTHZ_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createPutAuthorizationKeyRequest(AuthorizationKey: AuthorizationKey, RecordIdentifier: RecordIdentifier, DeviceID: DeviceID, NotificationInfoRepresentative: NotificationInfoRepresentative, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHZ_Helper.getResultElement(body: __request.OutputBody!, name:"PutAuthorizationKeyResponse")
                __target.onSuccess(value: __request.getAnyTypeValue(node: __result) as AnyObject, methodName:"PutAuthorizationKey")
            }
            else
            {
                __target.onError(error: __requestMgr.OutputFault!)
            }
        })
        return __request;
    }

    public func PutAuthorizationKey(AuthorizationKey:EPA_FdV_AUTHZ_AuthorizationKeyType, RecordIdentifier:EPA_FdV_AUTHZ_RecordIdentifierType, DeviceID:EPA_FdV_AUTHZ_DeviceIdType?, NotificationInfoRepresentative:String?, __error: inout Error?) throws  -> NSObject?
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createPutAuthorizationKeyRequest(AuthorizationKey: AuthorizationKey, RecordIdentifier: RecordIdentifier, DeviceID: DeviceID, NotificationInfoRepresentative: NotificationInfoRepresentative, __request:__request)
        try sendImplementation(request: __requestObj, requestMgr:__request)
        if __request.OutputFault != nil
        {
            __error=__request.OutputFault!
            return nil;
        }
        let __result=EPA_FdV_AUTHZ_Helper.getResultElement(body: __request.OutputBody!, name:"PutAuthorizationKeyResponse")
        return __request.getAnyTypeValue(node: __result);
    }
    func createCheckRecordExistsRequest(KVNR:EPA_FdV_AUTHZ_InsurantIdType, __request:EPA_FdV_AUTHZ_RequestResultHandler)  -> URLRequest
    {
        let __methodElement = __request.writeElement(name: "CheckRecordExists", URI:"http://ws.gematik.de/fd/phrs/AuthorizationService/v1.1", parent:__request.Body!)
        addAdornments(__methodElement: __methodElement)
            
        let __KVNRItemElement=__request.writeElement(obj: KVNR, type:EPA_FdV_AUTHZ_InsurantIdType.self, name:"KVNR", URI:"http://ws.gematik.de/fd/phrs/AuthorizationService/v1.1", parent:__methodElement, skipNullProperty:false)
        if __KVNRItemElement != nil
        {
            KVNR.serialize(__parent: __KVNRItemElement!, __request: __request);
        }
        let __requestObj = createRequest(__soapAction: "http://ws.gematik.de/fd/phrs/AuthorizationService/v1.0#CheckRecordExists", __request:__request)
        return __requestObj;
    }

    @discardableResult public func CheckRecordExistsAsync(KVNR:EPA_FdV_AUTHZ_InsurantIdType, callbackDelegate: @escaping (AnyObject?) -> ()) throws -> EPA_FdV_AUTHZ_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createCheckRecordExistsRequest(KVNR: KVNR, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            var __res:AnyObject?
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHZ_Helper.getResultElement(body: __request.OutputBody!, name:"RecordState")
                __res = try! __request.createObject(node: __result, type:EPA_FdV_AUTHZ_RecordStateType.self) as? EPA_FdV_AUTHZ_RecordStateType as AnyObject;
            }
            else
            {
                __res = __requestMgr.OutputFault! as AnyObject
            }
            callbackDelegate(__res)
        })
        return __request;
    }

    @discardableResult public func CheckRecordExistsAsync(KVNR:EPA_FdV_AUTHZ_InsurantIdType, __target:EPA_FdV_AUTHZ_SoapServiceResponse) throws -> EPA_FdV_AUTHZ_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createCheckRecordExistsRequest(KVNR: KVNR, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHZ_Helper.getResultElement(body: __request.OutputBody!, name:"RecordState")
                __target.onSuccess(value: try! __request.createObject(node: __result, type:EPA_FdV_AUTHZ_RecordStateType.self) as? EPA_FdV_AUTHZ_RecordStateType as AnyObject, methodName:"CheckRecordExists")
            }
            else
            {
                __target.onError(error: __requestMgr.OutputFault!)
            }
        })
        return __request;
    }

    public func CheckRecordExists(KVNR:EPA_FdV_AUTHZ_InsurantIdType, __error: inout Error?) throws  -> EPA_FdV_AUTHZ_RecordStateType?
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createCheckRecordExistsRequest(KVNR: KVNR, __request:__request)
        try sendImplementation(request: __requestObj, requestMgr:__request)
        if __request.OutputFault != nil
        {
            __error=__request.OutputFault!
            return nil;
        }
        let __result=EPA_FdV_AUTHZ_Helper.getResultElement(body: __request.OutputBody!, name:"RecordState")
        return try! __request.createObject(node: __result, type:EPA_FdV_AUTHZ_RecordStateType.self) as? EPA_FdV_AUTHZ_RecordStateType;
    }
    func createGetAuthorizationListRequest(RecordIdentifier:EPA_FdV_AUTHZ_RecordIdentifierType?, DeviceID:EPA_FdV_AUTHZ_DeviceIdType?, __request:EPA_FdV_AUTHZ_RequestResultHandler)  -> URLRequest
    {
        let __methodElement = __request.writeElement(name: "GetAuthorizationList", URI:"http://ws.gematik.de/fd/phrs/AuthorizationService/v1.1", parent:__request.Body!)
        addAdornments(__methodElement: __methodElement)
            
        let __RecordIdentifierItemElement=__request.writeElement(obj: RecordIdentifier, type:EPA_FdV_AUTHZ_RecordIdentifierType.self, name:"RecordIdentifier", URI:"http://ws.gematik.de/fd/phrs/AuthorizationService/v1.1", parent:__methodElement, skipNullProperty:true)
        if __RecordIdentifierItemElement != nil
        {
            RecordIdentifier!.serialize(__parent: __RecordIdentifierItemElement!, __request: __request);
        }
            
        let __DeviceIDItemElement=__request.writeElement(obj: DeviceID, type:EPA_FdV_AUTHZ_DeviceIdType.self, name:"DeviceID", URI:"http://ws.gematik.de/fd/phrs/AuthorizationService/v1.1", parent:__methodElement, skipNullProperty:true)
        if __DeviceIDItemElement != nil
        {
            DeviceID!.serialize(__parent: __DeviceIDItemElement!, __request: __request);
        }
        let __requestObj = createRequest(__soapAction: "http://ws.gematik.de/fd/phrs/AuthorizationService/v1.0#GetAuthorizationList", __request:__request)
        return __requestObj;
    }

    @discardableResult public func GetAuthorizationListAsync(RecordIdentifier:EPA_FdV_AUTHZ_RecordIdentifierType?, DeviceID:EPA_FdV_AUTHZ_DeviceIdType?, callbackDelegate: @escaping (AnyObject?) -> ()) throws -> EPA_FdV_AUTHZ_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createGetAuthorizationListRequest(RecordIdentifier: RecordIdentifier, DeviceID: DeviceID, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            var __res:AnyObject?
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHZ_Helper.getResultElement(body: __request.OutputBody!, name:"GetAuthorizationListResponse")
                __res = try! __request.createObject(node: __result, type:EPA_FdV_AUTHZ_GetAuthorizationListResponse.self) as? EPA_FdV_AUTHZ_GetAuthorizationListResponse as AnyObject;
            }
            else
            {
                __res = __requestMgr.OutputFault! as AnyObject
            }
            callbackDelegate(__res)
        })
        return __request;
    }

    @discardableResult public func GetAuthorizationListAsync(RecordIdentifier:EPA_FdV_AUTHZ_RecordIdentifierType?, DeviceID:EPA_FdV_AUTHZ_DeviceIdType?, __target:EPA_FdV_AUTHZ_SoapServiceResponse) throws -> EPA_FdV_AUTHZ_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createGetAuthorizationListRequest(RecordIdentifier: RecordIdentifier, DeviceID: DeviceID, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHZ_Helper.getResultElement(body: __request.OutputBody!, name:"GetAuthorizationListResponse")
                __target.onSuccess(value: try! __request.createObject(node: __result, type:EPA_FdV_AUTHZ_GetAuthorizationListResponse.self) as? EPA_FdV_AUTHZ_GetAuthorizationListResponse as AnyObject, methodName:"GetAuthorizationList")
            }
            else
            {
                __target.onError(error: __requestMgr.OutputFault!)
            }
        })
        return __request;
    }

    public func GetAuthorizationList(RecordIdentifier:EPA_FdV_AUTHZ_RecordIdentifierType?, DeviceID:EPA_FdV_AUTHZ_DeviceIdType?, __error: inout Error?) throws  -> EPA_FdV_AUTHZ_GetAuthorizationListResponse?
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createGetAuthorizationListRequest(RecordIdentifier: RecordIdentifier, DeviceID: DeviceID, __request:__request)
        try sendImplementation(request: __requestObj, requestMgr:__request)
        if __request.OutputFault != nil
        {
            __error=__request.OutputFault!
            return nil;
        }
        let __result=EPA_FdV_AUTHZ_Helper.getResultElement(body: __request.OutputBody!, name:"GetAuthorizationListResponse")
        return try! __request.createObject(node: __result, type:EPA_FdV_AUTHZ_GetAuthorizationListResponse.self) as? EPA_FdV_AUTHZ_GetAuthorizationListResponse;
    }
}