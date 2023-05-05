Pod::Spec.new do |s|
    s.name             = "TiketGrowthServices"
    s.module_name      = "TiketGrowthServices"
    s.version          = "v1.0.0-tms"
    s.summary          = "TiketGrowthServices Module"
    s.homepage         = "https://github.com/tiket"
    s.license          = "MIT"
    s.author           = { "Antoni" => "antoni@tiket.com" }
    s.source           = { git: "git@github.com:tiket/tiketiphone.git", tag: String(s.version) }
    s.platform         = :ios, "12.2"
    s.requires_arc     = true
    s.source_files     = "Tiket/TiketGrowthServices/TiketGrowthServices/Classes/**/*.{swift,h,m,bundle}"
    s.resources        =  [
                              'Tiket/TiketGrowthServices/TiketGrowthServices/Resources/*.json'
                          ]
    s.dependency 'Amplitude'
    s.dependency 'TiketFramework'
    s.dependency 'Swinject'
    s.dependency 'RxSwift'
    s.dependency 'SwiftKeychainWrapper'
    s.dependency 'TiketTrackerServices'
    s.dependency 'AmplitudeExperiment'
  end