//
//  MockEagleEyeSessionDelegate.swift
//  TiketEventsMerchants
//
//  Created by Ihsan Husnul Aqidah on 3/30/23.
//  Copyright © 2023 Tiket.com. All rights reserved.
//

import Foundation
import Alamofire
import TiketNetworkingServices

class MockEagleEyeSessionDelegate: EagleEyeSessionDelegate {
  func didReceive(response: Alamofire.DataResponse<Data>, withError error: Error?) {
    
  }
  
  func didFinishUploadAttachment(response: Alamofire.DataResponse<Data>, withError error: Error?, streamingFromDisk: Bool) {
    
  }
}
