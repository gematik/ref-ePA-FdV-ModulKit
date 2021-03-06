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
* A name for a person. A sequence of name parts, such as
*                 given name or family name, prefix, suffix, etc. PN differs
*                 from EN because the qualifier type cannot include LS
*                 (Legal Status).
*/

public class EPA_FdV_AUTHZ_PN : EPA_FdV_AUTHZ_EN 
{
    

    public required init()
    {
        super.init()
    }

    public override func serialize(__parent:DDXMLElement, __request:EPA_FdV_AUTHZ_RequestResultHandler)
    {
        super.serialize(__parent:__parent, __request:__request)
        

    }

    public override  func loadProperty(__node: DDXMLElement, __request: EPA_FdV_AUTHZ_RequestResultHandler ) -> Bool
    {
        return super.loadProperty(__node:__node, __request:__request)
    }
}