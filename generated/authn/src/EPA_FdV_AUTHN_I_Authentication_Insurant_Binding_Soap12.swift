//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------


open class EPA_FdV_AUTHN_I_Authentication_Insurant_Binding_Soap12:NSObject
{
    var Url:String? = "http://servicelocation/I_Authentication_Insurant"
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

    func sendImplementation(request:URLRequest, requestMgr:EPA_FdV_AUTHN_RequestResultHandler) throws
    {
        try requestMgr.sendImplementation(request: request)
    }
    func sendImplementation(request:URLRequest, requestMgr:EPA_FdV_AUTHN_RequestResultHandler, callbackDelegate: @escaping (EPA_FdV_AUTHN_RequestResultHandler) -> ()) throws
    {
        try requestMgr.sendImplementation(request: request, callbackDelegate:callbackDelegate)
    }
    func CreateRequestResultHandler() -> EPA_FdV_AUTHN_RequestResultHandler
    {
        let handler = EPA_FdV_AUTHN_RequestResultHandler(version: EPA_FdV_AUTHN_RequestResultHandler.SOAPVERSION_12)
            handler.CreateClassesForAny = self.CreateClassesForAny
        handler.EnableLogging = EnableLogging
        return handler
    }

    func createRequest(__soapAction:String, __request:EPA_FdV_AUTHN_RequestResultHandler)  -> URLRequest
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

        // Append optional action="..." information to header field Content-Type since the receiving system expects it.
        if let contentType = __requestObj.value(forHTTPHeaderField: "Content-Type") {
            let contentTypePlusAction = contentType+"; action=\""+__soapAction+"\""
            __requestObj.setValue(contentTypePlusAction, forHTTPHeaderField: "Content-Type")
        }

        if Username != nil
        {
            let authStr = String(format:"%@:%@", self.Username!,self.Password!)
            let authData = authStr.data(using:String.Encoding.ascii)
            let authValue = String(format:"Basic %@", EPA_FdV_AUTHN_Helper.base64forData(data: authData!))
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
    func createLoginCreateChallengeRequest(RequestSecurityToken:EPA_FdV_AUTHN_RequestSecurityTokenType?, __request:EPA_FdV_AUTHN_RequestResultHandler)  -> URLRequest
    {
        let referenceParameters:[String]=[]
        __request.addWS_addressingHeaders(action: "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue", replyTo:"http://www.w3.org/2005/08/addressing/anonymous", to:self.Url!, referenceParameters:referenceParameters)
        let __methodElement = __request.Body!
        addAdornments(__methodElement: __methodElement)
            
        let __RequestSecurityTokenItemElement=__request.writeElement(obj: RequestSecurityToken, type:EPA_FdV_AUTHN_RequestSecurityTokenType.self, name:"RequestSecurityToken", URI:"http://docs.oasis-open.org/ws-sx/ws-trust/200512", parent:__methodElement, skipNullProperty:false)
        if __RequestSecurityTokenItemElement != nil
        {
            RequestSecurityToken!.serialize(__parent: __RequestSecurityTokenItemElement!, __request: __request);
        }
        let __requestObj = createRequest(__soapAction: "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Issue", __request:__request)
        return __requestObj;
    }

    @discardableResult public func LoginCreateChallengeAsync(RequestSecurityToken:EPA_FdV_AUTHN_RequestSecurityTokenType?, callbackDelegate: @escaping (AnyObject?) -> ()) throws -> EPA_FdV_AUTHN_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createLoginCreateChallengeRequest(RequestSecurityToken: RequestSecurityToken, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            var __res:AnyObject?
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"RequestSecurityTokenResponse")
                __res = try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_RequestSecurityTokenResponseType.self) as? EPA_FdV_AUTHN_RequestSecurityTokenResponseType as AnyObject;
            }
            else
            {
                __res = __requestMgr.OutputFault! as AnyObject
            }
            callbackDelegate(__res)
        })
        return __request;
    }

    @discardableResult public func LoginCreateChallengeAsync(RequestSecurityToken:EPA_FdV_AUTHN_RequestSecurityTokenType?, __target:EPA_FdV_AUTHN_SoapServiceResponse) throws -> EPA_FdV_AUTHN_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createLoginCreateChallengeRequest(RequestSecurityToken: RequestSecurityToken, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"RequestSecurityTokenResponse")
                __target.onSuccess(value: try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_RequestSecurityTokenResponseType.self) as? EPA_FdV_AUTHN_RequestSecurityTokenResponseType as AnyObject, methodName:"LoginCreateChallenge")
            }
            else
            {
                __target.onError(error: __requestMgr.OutputFault!)
            }
        })
        return __request;
    }

    public func LoginCreateChallenge(RequestSecurityToken:EPA_FdV_AUTHN_RequestSecurityTokenType?, __error: inout Error?) throws  -> EPA_FdV_AUTHN_RequestSecurityTokenResponseType?
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createLoginCreateChallengeRequest(RequestSecurityToken: RequestSecurityToken, __request:__request)
        try sendImplementation(request: __requestObj, requestMgr:__request)
        if __request.OutputFault != nil
        {
            __error=__request.OutputFault!
            return nil;
        }
        let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"RequestSecurityTokenResponse")
        return try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_RequestSecurityTokenResponseType.self) as? EPA_FdV_AUTHN_RequestSecurityTokenResponseType;
    }
    func createLoginCreateTokenRequest(RequestSecurityTokenResponse:EPA_FdV_AUTHN_RequestSecurityTokenResponseType?, __request:EPA_FdV_AUTHN_RequestResultHandler) throws -> URLRequest
    {
        let referenceParameters:[String]=[]
        __request.addWS_addressingHeaders(action: "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RSTR/ChallengeFinal", replyTo:"http://www.w3.org/2005/08/addressing/anonymous", to:self.Url!, referenceParameters:referenceParameters)
        let __methodElement = __request.Body!
        addAdornments(__methodElement: __methodElement)
            
        let __RequestSecurityTokenResponseItemElement=__request.writeElement(obj: RequestSecurityTokenResponse, type:EPA_FdV_AUTHN_RequestSecurityTokenResponseType.self, name:"RequestSecurityTokenResponse", URI:"http://docs.oasis-open.org/ws-sx/ws-trust/200512", parent:__methodElement, skipNullProperty:false)
        if __RequestSecurityTokenResponseItemElement != nil
        {
            RequestSecurityTokenResponse!.serialize(__parent: __RequestSecurityTokenResponseItemElement!, __request: __request);
        }
        let __requestObj = createRequest(__soapAction: "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RSTR/ChallengeFinal", __request:__request)
        return __requestObj;
    }

    @discardableResult public func LoginCreateTokenAsync(RequestSecurityTokenResponse:EPA_FdV_AUTHN_RequestSecurityTokenResponseType?, callbackDelegate: @escaping (AnyObject?) -> ()) throws -> EPA_FdV_AUTHN_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=try createLoginCreateTokenRequest(RequestSecurityTokenResponse: RequestSecurityTokenResponse, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            var __res:AnyObject?
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"RequestSecurityTokenResponseCollection")
                __res = try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_RequestSecurityTokenResponseCollectionType.self) as? EPA_FdV_AUTHN_RequestSecurityTokenResponseCollectionType as AnyObject;
            }
            else
            {
                __res = __requestMgr.OutputFault! as AnyObject
            }
            callbackDelegate(__res)
        })
        return __request;
    }

    @discardableResult public func LoginCreateTokenAsync(RequestSecurityTokenResponse:EPA_FdV_AUTHN_RequestSecurityTokenResponseType?, __target:EPA_FdV_AUTHN_SoapServiceResponse) throws -> EPA_FdV_AUTHN_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=try createLoginCreateTokenRequest(RequestSecurityTokenResponse: RequestSecurityTokenResponse, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"RequestSecurityTokenResponseCollection")
                __target.onSuccess(value: try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_RequestSecurityTokenResponseCollectionType.self) as? EPA_FdV_AUTHN_RequestSecurityTokenResponseCollectionType as AnyObject, methodName:"LoginCreateToken")
            }
            else
            {
                __target.onError(error: __requestMgr.OutputFault!)
            }
        })
        return __request;
    }

    public func LoginCreateToken(RequestSecurityTokenResponse:EPA_FdV_AUTHN_RequestSecurityTokenResponseType?, __error: inout Error?) throws  -> EPA_FdV_AUTHN_RequestSecurityTokenResponseCollectionType?
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=try createLoginCreateTokenRequest(RequestSecurityTokenResponse: RequestSecurityTokenResponse, __request:__request)
        try sendImplementation(request: __requestObj, requestMgr:__request)
        if __request.OutputFault != nil
        {
            __error=__request.OutputFault!
            return nil;
        }
        let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"RequestSecurityTokenResponseCollection")
        return try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_RequestSecurityTokenResponseCollectionType.self) as? EPA_FdV_AUTHN_RequestSecurityTokenResponseCollectionType;
    }
    func createRenewTokenRequest(RequestSecurityToken:EPA_FdV_AUTHN_RequestSecurityTokenType?, __request:EPA_FdV_AUTHN_RequestResultHandler)  -> URLRequest
    {
        let referenceParameters:[String]=[]
        __request.addWS_addressingHeaders(action: "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Renew", replyTo:"http://www.w3.org/2005/08/addressing/anonymous", to:self.Url!, referenceParameters:referenceParameters)
        let __methodElement = __request.Body!
        addAdornments(__methodElement: __methodElement)
            
        let __RequestSecurityTokenItemElement=__request.writeElement(obj: RequestSecurityToken, type:EPA_FdV_AUTHN_RequestSecurityTokenType.self, name:"RequestSecurityToken", URI:"http://docs.oasis-open.org/ws-sx/ws-trust/200512", parent:__methodElement, skipNullProperty:false)
        if __RequestSecurityTokenItemElement != nil
        {
            RequestSecurityToken!.serialize(__parent: __RequestSecurityTokenItemElement!, __request: __request);
        }
        let __requestObj = createRequest(__soapAction: "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Renew", __request:__request)
        return __requestObj;
    }

    @discardableResult public func RenewTokenAsync(RequestSecurityToken:EPA_FdV_AUTHN_RequestSecurityTokenType?, callbackDelegate: @escaping (AnyObject?) -> ()) throws -> EPA_FdV_AUTHN_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createRenewTokenRequest(RequestSecurityToken: RequestSecurityToken, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            var __res:AnyObject?
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"RequestSecurityTokenResponse")
                __res = try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_RequestSecurityTokenResponseType.self) as? EPA_FdV_AUTHN_RequestSecurityTokenResponseType as AnyObject;
            }
            else
            {
                __res = __requestMgr.OutputFault! as AnyObject
            }
            callbackDelegate(__res)
        })
        return __request;
    }

    @discardableResult public func RenewTokenAsync(RequestSecurityToken:EPA_FdV_AUTHN_RequestSecurityTokenType?, __target:EPA_FdV_AUTHN_SoapServiceResponse) throws -> EPA_FdV_AUTHN_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createRenewTokenRequest(RequestSecurityToken: RequestSecurityToken, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"RequestSecurityTokenResponse")
                __target.onSuccess(value: try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_RequestSecurityTokenResponseType.self) as? EPA_FdV_AUTHN_RequestSecurityTokenResponseType as AnyObject, methodName:"RenewToken")
            }
            else
            {
                __target.onError(error: __requestMgr.OutputFault!)
            }
        })
        return __request;
    }

    public func RenewToken(RequestSecurityToken:EPA_FdV_AUTHN_RequestSecurityTokenType?, __error: inout Error?) throws  -> EPA_FdV_AUTHN_RequestSecurityTokenResponseType?
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createRenewTokenRequest(RequestSecurityToken: RequestSecurityToken, __request:__request)
        try sendImplementation(request: __requestObj, requestMgr:__request)
        if __request.OutputFault != nil
        {
            __error=__request.OutputFault!
            return nil;
        }
        let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"RequestSecurityTokenResponse")
        return try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_RequestSecurityTokenResponseType.self) as? EPA_FdV_AUTHN_RequestSecurityTokenResponseType;
    }
    func createLogoutTokenRequest(RequestSecurityToken:EPA_FdV_AUTHN_RequestSecurityTokenType?, __request:EPA_FdV_AUTHN_RequestResultHandler)  -> URLRequest
    {
        let referenceParameters:[String]=[]
        __request.addWS_addressingHeaders(action: "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Cancel", replyTo:"http://www.w3.org/2005/08/addressing/anonymous", to:self.Url!, referenceParameters:referenceParameters)
        let __methodElement = __request.Body!
        addAdornments(__methodElement: __methodElement)
            
        let __RequestSecurityTokenItemElement=__request.writeElement(obj: RequestSecurityToken, type:EPA_FdV_AUTHN_RequestSecurityTokenType.self, name:"RequestSecurityToken", URI:"http://docs.oasis-open.org/ws-sx/ws-trust/200512", parent:__methodElement, skipNullProperty:false)
        if __RequestSecurityTokenItemElement != nil
        {
            RequestSecurityToken!.serialize(__parent: __RequestSecurityTokenItemElement!, __request: __request);
        }
        let __requestObj = createRequest(__soapAction: "http://docs.oasis-open.org/ws-sx/ws-trust/200512/RST/Cancel", __request:__request)
        return __requestObj;
    }

    @discardableResult public func LogoutTokenAsync(RequestSecurityToken:EPA_FdV_AUTHN_RequestSecurityTokenType?, callbackDelegate: @escaping (AnyObject?) -> ()) throws -> EPA_FdV_AUTHN_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createLogoutTokenRequest(RequestSecurityToken: RequestSecurityToken, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            var __res:AnyObject?
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"RequestSecurityTokenResponse")
                __res = try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_RequestSecurityTokenResponseType.self) as? EPA_FdV_AUTHN_RequestSecurityTokenResponseType as AnyObject;
            }
            else
            {
                __res = __requestMgr.OutputFault! as AnyObject
            }
            callbackDelegate(__res)
        })
        return __request;
    }

    @discardableResult public func LogoutTokenAsync(RequestSecurityToken:EPA_FdV_AUTHN_RequestSecurityTokenType?, __target:EPA_FdV_AUTHN_SoapServiceResponse) throws -> EPA_FdV_AUTHN_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createLogoutTokenRequest(RequestSecurityToken: RequestSecurityToken, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"RequestSecurityTokenResponse")
                __target.onSuccess(value: try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_RequestSecurityTokenResponseType.self) as? EPA_FdV_AUTHN_RequestSecurityTokenResponseType as AnyObject, methodName:"LogoutToken")
            }
            else
            {
                __target.onError(error: __requestMgr.OutputFault!)
            }
        })
        return __request;
    }

    public func LogoutToken(RequestSecurityToken:EPA_FdV_AUTHN_RequestSecurityTokenType?, __error: inout Error?) throws  -> EPA_FdV_AUTHN_RequestSecurityTokenResponseType?
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createLogoutTokenRequest(RequestSecurityToken: RequestSecurityToken, __request:__request)
        try sendImplementation(request: __requestObj, requestMgr:__request)
        if __request.OutputFault != nil
        {
            __error=__request.OutputFault!
            return nil;
        }
        let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"RequestSecurityTokenResponse")
        return try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_RequestSecurityTokenResponseType.self) as? EPA_FdV_AUTHN_RequestSecurityTokenResponseType;
    }
    func createGetAuditEventsRequest(GetAuditEvents:NSObject?, __request:EPA_FdV_AUTHN_RequestResultHandler)  -> URLRequest
    {
        let referenceParameters:[String]=[]
        __request.addWS_addressingHeaders(action: "http://ws.gematik.de/fd/phrs/I_Authentication_Insurant/v1.1/GetAuditEvents", replyTo:"http://www.w3.org/2005/08/addressing/anonymous", to:self.Url!, referenceParameters:referenceParameters)
        let __methodElement = __request.writeElement(name: "GetAuditEvents", URI:"http://ws.gematik.de/fd/phrs/I_Authentication_Insurant/v1.1", parent:__request.Body!)
        addAdornments(__methodElement: __methodElement)
            
        let __GetAuditEventsItemElement=__request.writeElement(obj: GetAuditEvents, type:NSObject.self, name:"GetAuditEvents", URI:"http://ws.gematik.de/fd/phrs/I_Authentication_Insurant/v1.1", parent:__methodElement, skipNullProperty:false)
        if __GetAuditEventsItemElement != nil
        {
            __request.setAnyTypeValue(item: GetAuditEvents!, propertyElement:__GetAuditEventsItemElement!);
        }
        let __requestObj = createRequest(__soapAction: "http://ws.gematik.de/fd/phrs/I_Authentication_Insurant/v1.1/GetAuditEvents", __request:__request)
        return __requestObj;
    }

    @discardableResult public func GetAuditEventsAsync(GetAuditEvents:NSObject?, callbackDelegate: @escaping (AnyObject?) -> ()) throws -> EPA_FdV_AUTHN_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createGetAuditEventsRequest(GetAuditEvents: GetAuditEvents, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            var __res:AnyObject?
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"GetAuditEventsResponse")
                __res = try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_GetAuditEventsResponse.self) as? EPA_FdV_AUTHN_GetAuditEventsResponse as AnyObject;
            }
            else
            {
                __res = __requestMgr.OutputFault! as AnyObject
            }
            callbackDelegate(__res)
        })
        return __request;
    }

    @discardableResult public func GetAuditEventsAsync(GetAuditEvents:NSObject?, __target:EPA_FdV_AUTHN_SoapServiceResponse) throws -> EPA_FdV_AUTHN_RequestResultHandler
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createGetAuditEventsRequest(GetAuditEvents: GetAuditEvents, __request:__request)
        
        try sendImplementation(request: __requestObj, requestMgr:__request, callbackDelegate: {
            __requestMgr->() in
            if __requestMgr.OutputFault == nil
            {
                let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"GetAuditEventsResponse")
                __target.onSuccess(value: try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_GetAuditEventsResponse.self) as? EPA_FdV_AUTHN_GetAuditEventsResponse as AnyObject, methodName:"GetAuditEvents")
            }
            else
            {
                __target.onError(error: __requestMgr.OutputFault!)
            }
        })
        return __request;
    }

    public func GetAuditEvents(GetAuditEvents:NSObject?, __error: inout Error?) throws  -> EPA_FdV_AUTHN_GetAuditEventsResponse?
    {
        let __request = CreateRequestResultHandler()
        let __requestObj=createGetAuditEventsRequest(GetAuditEvents: GetAuditEvents, __request:__request)
        try sendImplementation(request: __requestObj, requestMgr:__request)
        if __request.OutputFault != nil
        {
            __error=__request.OutputFault!
            return nil;
        }
        let __result=EPA_FdV_AUTHN_Helper.getResultElement(body: __request.OutputBody!, name:"GetAuditEventsResponse")
        return try! __request.createObject(node: __result, type:EPA_FdV_AUTHN_GetAuditEventsResponse.self) as? EPA_FdV_AUTHN_GetAuditEventsResponse;
    }
}