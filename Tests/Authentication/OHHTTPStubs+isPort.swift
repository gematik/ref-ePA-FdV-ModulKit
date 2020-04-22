//
//  Copyright (c) 2020 gematik GmbH
//  
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//  
//     http://www.apache.org/licenses/LICENSE-2.0
//  
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import OHHTTPStubs

/**
 * Matcher for testing an `URLRequest`'s **port**.
 *
 * e.g. the port part is `8080` in `https://api.example.com:8080/`.
 *
 * - Parameter part: The port to match (e.g. '8080')
 *
 * - Returns: a matcher (OHHTTPStubsTestBlock) that succeeds only if the request
 *            has the given port
 */
public func isPort(_ port: Int) -> OHHTTPStubsTestBlock {
    precondition(port > 0, "The port part of the request cannot be negative")
    return { req in req.url?.port == port }
}
