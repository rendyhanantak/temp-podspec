//
//  FirebaseInitializer.swift
//  Tiket
//
//  Created by atiang on 9/22/21.
//  Copyright © 2021 Tiket.com. All rights reserved.
//

import Foundation
import TiketPerformanceLibrary
import Firebase
import FirebaseCore
import FirebaseMessaging

class FirebaseInitializer: Initializable {
    var identifier: String = "Firebase"
    weak var messagingDelegate: MessagingDelegate?

    init(messagingDelegate: MessagingDelegate) {
        self.messagingDelegate = messagingDelegate
        FirebaseApp.configure()
    }

    func initialize() {
        setupFirebase()
    }

    // MARK: - Firebase
    func setupFirebase() {
        Messaging.messaging().delegate = messagingDelegate
    }

    // MARK: - GoogleSignIn Delegate
    func getClientId() -> String? {
        return FirebaseApp.app()?.options.clientID
    }
}
