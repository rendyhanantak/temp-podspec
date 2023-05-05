Pod::Spec.new do |s|
    s.name             = "TiketTrackerServices"
    s.module_name      = "TiketTrackerServices"
    s.version          = "v1.0.0-tms"
    s.summary          = "Tiket Tracker Services"
    s.homepage         = "https://github.com/tiket"
    s.license          = "MIT"
    s.author           = { "Antoni" => "antoni@tiket.com" }
    s.source           = { git: "git@github.com:tiket/tiketiphone.git", tag: 'v'+ s.version.to_s }
    s.platform         = :ios, "12.2"
    s.requires_arc     = true
    s.source_files     = "Tiket/TiketTrackerServices/TiketTrackerServices/Classes/**/*.{swift,h,m,bundle}"
    s.dependency 'TiketCommon'
    s.dependency 'TiketNetworkingServices'
    s.dependency 'TiketFramework'
  end
  