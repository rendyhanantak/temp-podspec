Pod::Spec.new do |s|
    s.name             = "TiketPerformanceLibrary"
    s.module_name      = "TiketPerformanceLibrary"
    s.version          = "1.0.0-tms"
    s.summary          = "Tiket Performance Library"
    s.homepage         = "https://github.com/tiket"
    s.license          = "MIT"
    s.author           = { "Antoni" => "antoni@tiket.com" }
    s.source           = { git: "git@github.com:tiket/tiketiphone.git", tag: 'v'+String(s.version) }
    s.platform         = :ios, "12.2"
    s.requires_arc     = true
    s.source_files     = "Tiket/TiketPerformanceLibrary/TiketPerformanceLibrary/Classes/**/*.{swift,h,m,bundle}"
    s.dependency 'Firebase/Performance'
    s.dependency 'Firebase/Core'
    s.dependency 'TiketCommon'
  end