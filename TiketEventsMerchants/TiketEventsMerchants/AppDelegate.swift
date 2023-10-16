//
//  AppDelegate.swift
//  TiketEventsMerchants
//
//  Created by Rendy Hananta Kurniawan on 10/9/23.
//

import UIKit
import Firebase
import TiketWebViewServices

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        setupDependencies()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        //TODO: Change url
        let urlString = BuildConfig.feBaseUrl()
        window?.rootViewController = TDSCoreWebViewController(url: urlString, titleType: .dynamic)
        window?.makeKeyAndVisible()
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        if let scheme = url.scheme,
           scheme.localizedCaseInsensitiveCompare("itms-apps") == .orderedSame {
            var parameters: [String: String] = [:]
            URLComponents(url: url, resolvingAgainstBaseURL: false)?.queryItems?.forEach {
                parameters[$0.name] = $0.value
            }
            if let urlStr = parameters["url"], let url = URL(string: urlStr), let controller = UIApplication.shared.delegate?.window??.rootViewController as? ViewController {
                controller.url = url
            }
        }
        return true
    }
}

