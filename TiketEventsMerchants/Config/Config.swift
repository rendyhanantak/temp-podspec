//
//  Config.swift
//  TiketEventsMerchants
//
//  Created by Radhakrishna Pai on 22/05/23.
//  Copyright © 2023 Tiket.com. All rights reserved.
//

import Foundation

enum BuildConfig {
  private static func stringValue(forKey key: String) -> String {
    guard let value = Bundle.main.object(forInfoDictionaryKey: key) as? String
    else {
      fatalError("Invalid value or undefined key")
    }
    return value
  }
  
  static func feBaseUrl() -> String {
    return "https://" + self.stringValue(forKey: "BASE_FE_URL")
  }
}
