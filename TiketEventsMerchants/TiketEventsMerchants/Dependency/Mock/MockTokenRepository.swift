//
//  MockTokenRepository.swift
//  TiketEventsMerchants
//
//  Created by Ihsan Husnul Aqidah on 3/29/23.
//  Copyright © 2023 Tiket.com. All rights reserved.
//

import Foundation
import TiketNetworkingServices
import TiketCommon
import RxSwift

final class MockTokenRepository: TokenRepository {
  
  func saveToken(_ token: String) { }
  
  func getToken() -> String { return "" }
  
  func clearToken() { }
}

final class MockUserSettingRepository: UserSettingRepository {
  var IDRCurrencyCode: String = ""
  
  var rxLanguageObservable: RxSwift.Observable<String?> = .empty()
  
  func getLanguage() -> String {
    return "en"
  }
  
  func setLanguage(_ language: String) { }
  
  func getCurrencyISOCode() -> String {
    return ""
  }
  
  func setCurrencyISOCode(_ ISOCode: String) {

  }
  
  func getCurrencyLanguage() -> String {
    return ""
  }
  
  func setCurrencyLanguage(_ currencyLanguage: String) {
  
  }
  
  func getFlightCalendarCheapestPriceState() -> Bool {
    return false
  }
  
  func setFlightCalendarCheapestPriceState(_ toggleState: Bool) {
    
  }
  
  func getHotelCalendarCheapestPriceState() -> Bool {
    return false
  }
  
  func setHotelCalendarCheapestPriceState(_ toggleState: Bool) {
    
  }
  
  func getNotificationState(completionHandler: @escaping (Bool) -> ()) {
    
  }
  
  func deleteAllCurrencyList() {
    
  }
  
  func getCurrencyList() -> [TiketCommon.Currency] {
    return []
  }
  
  func getEnvironmentPath() -> TiketCommon.EnvironmentPathType {
#if DEBUG
    return .gatotkaca
#elseif RELEASESTAGE
    return .gatotkaca
#else
    return .production
#endif
  }
  
  func setEnvironmentPath(_ environmentPathType: TiketCommon.EnvironmentPathType) {
    
  }
}
