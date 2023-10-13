//
//  MockTokenApi.swift
//  TiketEventsMerchants
//
//  Created by Ihsan Husnul Aqidah on 3/30/23.
//  Copyright © 2023 Tiket.com. All rights reserved.
//

import Foundation
import RxSwift
import TiketNetworkingServices

class MockTokenApi: TokenApi {
  func getToken() -> RxSwift.Observable<String> {
    Observable.just("")
  }
}
