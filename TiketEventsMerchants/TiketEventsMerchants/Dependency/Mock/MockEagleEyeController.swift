//
//  MockEagleEyeController.swift
//  TiketEventsMerchants
//
//  Created by Ihsan Husnul Aqidah on 3/29/23.
//  Copyright © 2023 Tiket.com. All rights reserved.
//

import Foundation
import EagleEye

class MockEagleEyeController: EagleEyeController {
  
  func log(event: [String : Any]) { }
  
  func applicationDidFinishLoadHomePage() { }
  
  func setLoggingFlag(value: Bool) { }
  
  func updateAppState(state: EagleEyeAppState) { }
  
  func didReceiveResponse(statusCode: Int) { }
}
