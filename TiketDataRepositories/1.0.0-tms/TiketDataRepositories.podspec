Pod::Spec.new do |s|
    s.name             = 'TiketDataRepositories'
    s.version          = '1.0.0-tms'
    s.summary          = 'Tiket Data Repositories'
    s.description      = 'Tiket Data Repositories'
    s.homepage         = 'https://github.com/tiket/tiketiphone'
    s.license          = "MIT"
    s.author           = { 'herlambang' => 'herlambang.prasetyo@tiket.com' }
    s.source           = { git: "git@github.com:tiket/tiketiphone.git", tag: 'v'+String(s.version) }
    s.requires_arc     = true
    s.module_name      = 'TiketDataRepositories'
    
    s.ios.deployment_target = '12.2'
    s.source_files          = ['Tiket/TiketDataRepositories/TiketDataRepositories/Classes/**/*.swift']
    
    s.frameworks = ['Foundation', 'UIKit']
    s.dependency 'RxSwift'
    s.dependency 'RxCocoa'
    s.dependency 'SwiftKeychainWrapper'
    s.dependency 'Swinject'
    s.dependency 'SwinjectStoryboard'
    s.dependency 'TiketGeneralConfigModule'
    
    end
    