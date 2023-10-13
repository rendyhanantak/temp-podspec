//
//  AppDelegate+Dependency.swift
//  TiketEventsMerchants
//
//  Created by Rendy Hananta Kurniawan on 10/13/23.
//

import Foundation
import Swinject
import SwinjectStoryboard
import EagleEye
import TiketCommon
import TiketWebViewServices
import TiketFramework
import TiketNetworkingServices
import TiketPrivacyLibrary

extension AppDelegate {
    func setupDependencies() {
        let container = SwinjectStoryboard.defaultContainer
        
        container.register(AppConfig.self) { _ in
          MockAppConfig()
        }
        
        container.register(EagleEyeController.self) { _ in
          MockEagleEyeController()
        }
        
        container.register(TokenRepository.self) { _ in
          MockTokenRepository()
        }
        
        container.register(UserSettingRepository.self) { _ in
          MockUserSettingRepository()
        }
        
        container.register(SSLPinningService.self) { _ in
          MockSSLPinningService()
        }
        
        container.register(TiketApiClient.self) { r in
            TiketApiClientImpl(
                userDefaults: UserDefaults.standard,
                isForToken: false,
                userSettingRepository: r.resolveSafely()!,
                sessionDelegate: r.resolveSafely()!,
                networkAdapter: MockRequestAdapter()
            )
        }
        
        container.register(AuthenticatedTiketApiClient.self) { r in
          AuthenticatedTiketApiClientImpl(
            tiketApiClient: r.resolveSafely()!,
            tokenInteractor: r.resolveSafely()!,
            userSettingRepository: r.resolveSafely()!,
            appConfig: r.resolveSafely()!
          )
        }
        
        container.register(EagleEyeSessionDelegate.self) { r in
            MockEagleEyeSessionDelegate()
        }
        
        container.register(TokenApi.self) { r in
          MockTokenApi()
        }
        
        container.register(TokenInteractor.self) { r in
            TokenInteractorImpl(
                tokenApi: r.resolveSafely()!,
                tokenRepository: r.resolveSafely()!
            )
        }
        
        container.register(PrivacyPreference.self) { r in
          IgnisPrivacyPreferenceImpl()
        }
        
        // Add assembly
        _ = Assembler([
          TDSCoreWebViewAssembly()
        ], container: SwinjectStoryboard.defaultContainer)
    }
}
