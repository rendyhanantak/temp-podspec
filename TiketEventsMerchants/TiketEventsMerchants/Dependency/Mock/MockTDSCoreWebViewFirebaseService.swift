//
//  MockTDSCoreWebViewFirebaseService.swift
//  TiketEventsMerchants
//
//  Created by Ihsan Husnul Aqidah on 4/11/23.
//  Copyright © 2023 Tiket.com. All rights reserved.
//

import Foundation
import TiketWebViewServices

final class MockTDSCoreWebViewFirebaseService: TDSCoreWebViewFirebaseService {
    var webViewDenyListMatcherKey: String {
        return "(\\w*)://([\\w\\d]*.?)(google.com|facebook.com|github.com).*"
    }
    var webViewAllowListMatcherKey: String {
        return "(\\w*)://([\\w\\d]*.?)(tiket.com|tiketsafe.com|gatotkaca.tiket.com|10.0.2.2|reactplayer.vercel.app|core-test.vercel.app).*"
    }
}
