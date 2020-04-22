Easy WSDL

http://easywsdl.com
Version: 5.7.0.0
Generated at: 19-11-2019




How to use generated classes:

1. Add all files from src folder to your Swift project. We recommend to create a separate group for these files in your XCode project.
2. Add all files from KissXML folder to your project.
3. Go to the project settings (choose "Edit Project Settings" from "Project" menu").
4. Go to the "Build" tab and make the following changes:
    In the "Linking" section, go to the "Other Linker Flags" section and add the value "-lxml2" (without quotes).
    In the "Search Paths" section add a new search path to the "Header Search Paths" for "/usr/include/libxml2" (needed for KissXML library)
5. Create a bridging header file by choosing File > New > File > (iOS, watchOS, tvOS, or OS X) > Source > Header File. Add the following lines to this file:
#import "KissXML/DDXML.h"
6. Go to the Project settings -> Build Settings -> Objective-C Bridging Header and set a path to this file.

let service = EPA_FdV_AUTHZ_I_AuthorizationBinding(url:"http://webservice.com")
service.MethodToInvoke()

More documentation and examples you will find in doc folder in the generated zip file.


Important:
EasyWSDL generates all classes in SWIFT language. But still we are using external libraries (KissXML and MIMEKit) which are written in Objective C (they haven't been ported to SWIFT yet).
If there will be swift versions of these libraries, we will use them in our generator. But for now we have to use Objective C libraries.


Used libraries:

- KissXML (https://github.com/robbiehanson/KissXML). THIS IS A NEW VERSION. PLEASE UPGRADE THE EXISTING ONE IF NEEDED.
We have included KissXML sources in this package. But you can also use CocoaPods to install it instead. More info you can find here (https://github.com/robbiehanson/KissXML).
Keep in mind that we test our genertor with version KissXML included in this package.
If you encounter that generated classes dont't work with KissXML installed from CocoaPods, please inform us about this.

Thanks for using EasyWsdl. We've spend much time to create this tool. We hope that it will simplify your development. If you like it, please upvote posts about it on stackoverflow and like us on Facebook (https://www.facebook.com/EasyWsdl).
This will help us promote the generator. If you find any problems then contact us and we will try to help you with your webservice.


Generator output:
1. Type 'http://www.w3.org/2000/09/xmldsig#:PGPDataType' has more than one element with the name 'http://www.w3.org/2000/09/xmldsig#:PGPKeyPacket', which is not fully supported
2. Type 'urn:hl7-org:v3:IVL_TS' has more than one element with the name 'urn:hl7-org:v3:high', which is not fully supported
3. Type 'urn:hl7-org:v3:IVL_TS' has more than one element with the name 'urn:hl7-org:v3:width', which is not fully supported
4. Type 'urn:hl7-org:v3:IVL_TS' has more than one element with the name 'urn:hl7-org:v3:high', which is not fully supported
5. Type 'urn:hl7-org:v3:IVL_TS' has more than one element with the name 'urn:hl7-org:v3:width', which is not fully supported
6. Type 'urn:hl7-org:v3:IVL_PQ' has more than one element with the name 'urn:hl7-org:v3:high', which is not fully supported
7. Type 'urn:hl7-org:v3:IVL_PQ' has more than one element with the name 'urn:hl7-org:v3:width', which is not fully supported
8. Type 'urn:hl7-org:v3:IVL_PQ' has more than one element with the name 'urn:hl7-org:v3:high', which is not fully supported
9. Type 'urn:hl7-org:v3:IVL_PQ' has more than one element with the name 'urn:hl7-org:v3:width', which is not fully supported
10. Type 'urn:hl7-org:v3:IVL_PPD_TS' has more than one element with the name 'urn:hl7-org:v3:high', which is not fully supported
11. Type 'urn:hl7-org:v3:IVL_PPD_TS' has more than one element with the name 'urn:hl7-org:v3:width', which is not fully supported
12. Type 'urn:hl7-org:v3:IVL_PPD_TS' has more than one element with the name 'urn:hl7-org:v3:high', which is not fully supported
13. Type 'urn:hl7-org:v3:IVL_PPD_TS' has more than one element with the name 'urn:hl7-org:v3:width', which is not fully supported
14. Type 'urn:hl7-org:v3:IVL_PPD_PQ' has more than one element with the name 'urn:hl7-org:v3:high', which is not fully supported
15. Type 'urn:hl7-org:v3:IVL_PPD_PQ' has more than one element with the name 'urn:hl7-org:v3:width', which is not fully supported
16. Type 'urn:hl7-org:v3:IVL_PPD_PQ' has more than one element with the name 'urn:hl7-org:v3:high', which is not fully supported
17. Type 'urn:hl7-org:v3:IVL_PPD_PQ' has more than one element with the name 'urn:hl7-org:v3:width', which is not fully supported
18. Type 'urn:hl7-org:v3:IVL_INT' has more than one element with the name 'urn:hl7-org:v3:high', which is not fully supported
19. Type 'urn:hl7-org:v3:IVL_INT' has more than one element with the name 'urn:hl7-org:v3:width', which is not fully supported
20. Type 'urn:hl7-org:v3:IVL_INT' has more than one element with the name 'urn:hl7-org:v3:high', which is not fully supported
21. Type 'urn:hl7-org:v3:IVL_INT' has more than one element with the name 'urn:hl7-org:v3:width', which is not fully supported
22. Type 'urn:hl7-org:v3:IVL_REAL' has more than one element with the name 'urn:hl7-org:v3:high', which is not fully supported
23. Type 'urn:hl7-org:v3:IVL_REAL' has more than one element with the name 'urn:hl7-org:v3:width', which is not fully supported
24. Type 'urn:hl7-org:v3:IVL_REAL' has more than one element with the name 'urn:hl7-org:v3:high', which is not fully supported
25. Type 'urn:hl7-org:v3:IVL_REAL' has more than one element with the name 'urn:hl7-org:v3:width', which is not fully supported
26. Type 'urn:hl7-org:v3:IVL_MO' has more than one element with the name 'urn:hl7-org:v3:high', which is not fully supported
27. Type 'urn:hl7-org:v3:IVL_MO' has more than one element with the name 'urn:hl7-org:v3:width', which is not fully supported
28. Type 'urn:hl7-org:v3:IVL_MO' has more than one element with the name 'urn:hl7-org:v3:high', which is not fully supported
29. Type 'urn:hl7-org:v3:IVL_MO' has more than one element with the name 'urn:hl7-org:v3:width', which is not fully supported
