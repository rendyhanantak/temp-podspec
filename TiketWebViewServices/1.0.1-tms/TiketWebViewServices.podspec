Pod::Spec.new do |s|
    s.name             = "TiketWebViewServices"
    s.module_name      = "TiketWebViewServices"
    s.version          = "1.0.1-tms"
    s.summary          = "Tiket WebView Services"
    s.homepage         = "https://github.com/tiket"
    s.license          = "MIT"
    s.author           = { "alifmahar" => "alif.mahardhika@tiket.com" }
    s.source           = { git: "git@github.com:tiket/tiketiphone.git", tag: 'v'+String(s.version) }
    s.platform         = :ios, "12.2"
    s.requires_arc     = true
    s.source_files     = "Tiket/TiketWebViewServices/TiketWebViewServices/Classes/**/*.{swift,h,m,bundle}"
    
    s.resources = [
        'Tiket/TiketWebViewServices/TiketWebViewServices/Classes/**/*.{storyboard,xib}',
        'Tiket/TiketWebViewServices/TiketWebViewServices/Languages/*.lproj',
    ]
    
    s.frameworks = ['Foundation', 'UIKit', 'WebKit']
    s.dependency 'RxSwift'
    s.dependency 'RxCocoa'
    s.dependency 'TiketCommon'
    s.dependency 'TiketComponent'
    s.dependency 'R.swift'
    s.dependency 'TiketTrackerServices'
    s.dependency 'Swinject'
    s.dependency 'SwinjectStoryboard'
    s.dependency 'RxWebKit'
    s.dependency 'EagleEye'
    s.dependency 'TiketNetworkingServices'
    s.dependency 'TiketGrowthServices'
    s.dependency 'TiketDataRepositories'
    s.dependency 'TiketFramework'
    s.dependency 'TiketPrivacyLibrary'
  end