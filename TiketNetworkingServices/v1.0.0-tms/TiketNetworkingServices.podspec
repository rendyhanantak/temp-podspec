Pod::Spec.new do |s|
  s.name             = "TiketNetworkingServices"
  s.module_name      = "TiketNetworkingServices"
  s.version          = "v1.0.0-tms"
  s.summary          = "Tiket Networking Module"
  s.homepage         = "https://github.com/tiket"
  s.license          = "MIT"
  s.author           = { "Antoni" => "antoni@tiket.com" }
  s.source           = { git: "git@github.com:tiket/tiketiphone.git", tag: 'v'+String(s.version) }
  s.platform         = :ios, "12.2"
  s.requires_arc     = true
  s.source_files     = "Tiket/TiketNetworkingServices/TiketNetworkingServices/Classes/**/*.{swift,h,m,bundle}"
  s.dependency 'Alamofire', '~> 4.0'
  s.dependency 'RxSwift'
  s.dependency 'RxCocoa'
  s.dependency 'Unbox', '~> 4.0.0'
  s.dependency 'Swinject', '~> 2.6.0'
  s.dependency 'Reqres'
  s.dependency 'TiketFramework'
  s.dependency 'TiketCommon'
  s.dependency 'EagleEye'
end
