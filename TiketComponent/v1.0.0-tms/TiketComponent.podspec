Pod::Spec.new do |s|
    s.name             = "TiketComponent"
    s.module_name      = "TiketComponent"
    s.version          = "v1.0.0-tms"
    s.summary          = "Tiket Component Module"
    s.homepage         = "https://github.com/tiket"
    s.license          = "MIT"
    s.author           = { "Antoni" => "antoni@tiket.com" }
    s.source           = { git: "git@github.com:tiket/tiketiphone.git", tag: 'v'+String(s.version) }
    s.platform         = :ios, "12.2"
    s.requires_arc     = true
    s.source_files     = "Tiket/TiketComponent/TiketComponent/Classes/**/*.{swift,h,m,bundle}"
    
    s.resources = [
        'Tiket/TiketComponent/TiketComponent/*.xcassets',
        'Tiket/TiketComponent/TiketComponent/Classes/**/*.{storyboard,xib}',
        'Tiket/TiketComponent/TiketComponent/Languages/*.lproj',
        'Tiket/TiketComponent/TiketComponent/Assets/**/*.json',
        'Tiket/TiketComponent/TiketComponent/Assets/**/*.xcassets'
        
    ]
    
    s.frameworks = ['Foundation', 'UIKit', 'WebKit']
    s.dependency 'RxSwift'
    s.dependency 'RxCocoa'
    s.dependency 'TiketCommon'
    s.dependency 'lottie-ios'
    s.dependency 'Repeat'
    s.dependency 'R.swift'
    s.dependency 'TiketTrackerServices'
    s.dependency 'Swinject'
    s.dependency 'SwinjectStoryboard'
    s.dependency 'RxWebKit'
    s.dependency 'EagleEye'
    s.dependency 'TiketImageLoader'
    s.dependency 'TiketNetworkingServices'
    s.dependency 'TiketGrowthServices'
    s.dependency 'TiketDataRepositories'
  end