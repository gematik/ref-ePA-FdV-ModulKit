//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 5.7.0.0
//
// Created by Quasar Development 
//
//---------------------------------------------------


import Foundation

public class EPA_FdV_AUTHN_SoapError:NSError
{
    var Details:AnyObject?

    init(message:String,details:AnyObject?) {
        Details=details;
        super.init(domain: message, code: 0, userInfo: nil)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}