//
//  MockRequestAdapter.swift
//  TiketEventsMerchants
//
//  Created by Umam Maulana on 24/05/23.
//  Copyright © 2023 Tiket.com. All rights reserved.
//

import Alamofire
import Foundation

class MockRequestAdapter: RequestAdapter {
  func adapt(_ urlRequest: URLRequest) throws -> URLRequest {
    return urlRequest
  }
  
    init() {}
}
