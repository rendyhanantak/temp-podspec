Pod::Spec.new do |s|
    s.name             = "TiketImageLoader"
    s.module_name      = "TiketImageLoader"
    s.version          = "1.0.0-tms"
    s.summary          = "Tiket Image Loader"
    s.homepage         = "https://github.com/tiket"
    s.license          = "MIT"
    s.author           = { "Antoni" => "antoni@tiket.com" }
    s.source           = { git: "git@github.com:tiket/tiketiphone.git", tag: 'v'+String(s.version) }
    s.platform         = :ios, "12.2"
    s.requires_arc     = true
    s.source_files     = "Tiket/TiketImageLoader/TiketImageLoader/Classes/**/*.{swift,h,m,bundle}"
  
    s.dependency 'Kingfisher'
    s.dependency 'Connectivity'
    s.dependency 'Alamofire'
    s.dependency 'TiketPerformanceLibrary'
    s.dependency 'TiketFramework'
    s.dependency 'EagleEye'
  end