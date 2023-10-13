//
//  MockAppConfig.swift
//  TiketEventsMerchants
//
//  Created by Ihsan Husnul Aqidah on 3/29/23.
//  Copyright © 2023 Tiket.com. All rights reserved.
//

import Foundation
import TiketCommon

struct MockAppConfig: AppConfig {
    var userId: String? = nil
    var deviceId: String = ""
    var signupType: String? = nil
    var loginType: String? = nil
    var tiketSessionId: String = ""
    var platform: String = ""
    var appVersion: String = ""
    var deviceModel: String = ""
    var osVersion: String = ""
    var language: String = ""
    var currency: String = ""
    var firstName: String? = nil
    var lastName: String? = nil
    var email: String? = nil
    var phoneNumber: String? = nil
    var isVerified: String? = nil
    var batteryPercentage: Int = 0
    var ppi: Int? = nil
    var networkType: String = ""
    var networkProvider: String? = nil
    var powSaverMode: Bool = false
}
