Pod::Spec.new do |s|
    s.name             = "TiketPrivacyLibrary"
    s.module_name      = "TiketPrivacyLibrary"
    s.version          = "1.0.1-tms"
    s.summary          = "Tiket Privacy Library Module"
    s.homepage         = "https://github.com/tiket"
    s.license          = "MIT"
    s.author           = { "Antoni" => "antoni@tiket.com" }
    s.source           = { git: "git@github.com:tiket/tiketiphone.git", tag: 'v'+String(s.version) }
    s.platform         = :ios, "12.2"
    s.requires_arc     = true
    s.source_files     = "Tiket/TiketPrivacyLibrary/TiketPrivacyLibrary/Classes/**/*.{swift,h,m,bundle}"
    
    s.resources = [
        'Tiket/TiketPrivacyLibrary/TiketPrivacyLibrary/Assets/**/*.{xcassets,json}',
        'Tiket/TiketPrivacyLibrary/TiketPrivacyLibrary/Classes/**/*.{storyboard,xib}',
        'Tiket/TiketPrivacyLibrary/TiketPrivacyLibrary/Languages/*.lproj',
        'Tiket/TiketPrivacyLibrary/TiketPrivacyLibrary/Assets/**/*.json',
        'Tiket/TiketPrivacyLibrary/TiketPrivacyLibrary/*.xcassets'
    ]
    
    s.frameworks = ['Foundation', 'UIKit', 'WebKit']
    s.dependency 'RxCocoa'
    s.dependency 'RxSwift'
    s.dependency 'RxWebKit'
    s.dependency 'TiketCommon'
    s.dependency 'TiketFramework'
    s.dependency 'R.swift'
    s.dependency 'TiketComponent'
    s.dependency 'Swinject'
    s.dependency 'SwinjectStoryboard'
    s.dependency 'EagleEye'
    s.dependency 'TiketImageLoader'
    s.dependency 'TiketDataRepositories'
    s.dependency 'TiketGrowthServices'
    s.dependency 'TiketGeneralConfigModule'
  end