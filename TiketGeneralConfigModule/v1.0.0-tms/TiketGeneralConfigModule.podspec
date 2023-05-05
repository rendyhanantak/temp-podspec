Pod::Spec.new do |s|
    s.name             = "TiketGeneralConfigModule"
    s.module_name      = "TiketGeneralConfigModule"
    s.version          = "v1.0.0-tms"
    s.summary          = "TiketGeneralConfig Module"
    s.homepage         = "https://github.com/tiket"
    s.license          = "MIT"
    s.author           = { "Antoni" => "antoni@tiket.com" }
    s.source           = { git: "git@github.com:tiket/tiketiphone.git", tag: String(s.version) }
    s.platform         = :ios, "12.2"
    s.requires_arc     = true
    s.source_files     = "Tiket/TiketGeneralConfigModule/TiketGeneralConfigModule/Classes/**/*.{swift,h,m,bundle}"
    s.resources        =  [
                              'Tiket/TiketGeneralConfigModule/TiketGeneralConfigModule/Resources/*.json',
                              'Tiket/TiketGeneralConfigModule/TiketGeneralConfigModule/Languages/*.lproj'
                          ]
                          
    s.dependency 'TiketFramework'
    s.dependency 'Swinject'
    s.dependency 'RxSwift'
    s.dependency 'TiketCommon'
    s.dependency 'TiketNetworkingServices'
  end