//
//  MockCacheAdapter.swift
//  TiketEventsMerchants
//
//  Created by Ihsan Husnul Aqidah on 3/30/23.
//  Copyright © 2023 Tiket.com. All rights reserved.
//

import Foundation
import Alamofire

class MockCacheAdapter: RequestAdapter {
    
    func adapt(_ urlRequest: URLRequest) throws -> URLRequest {
        var urlRequest = urlRequest
        let urlString = (urlRequest.url?.absoluteString).safeUnwrap()
        
        return urlRequest
    }
}

