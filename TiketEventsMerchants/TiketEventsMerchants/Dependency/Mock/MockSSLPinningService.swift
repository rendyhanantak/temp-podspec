//
//  MockSSLPinningService.swift
//  TiketEventsMerchants
//
//  Created by Ihsan Husnul Aqidah on 3/29/23.
//  Copyright © 2023 Tiket.com. All rights reserved.
//

import Foundation
import TiketNetworkingServices

final class MockSSLPinningService: SSLPinningService {
    func validate(serverTrust: SecTrust, forDomain domain: String, endPoint: String?) -> (Bool, Error?) {
        return (true, nil)
    }
}
