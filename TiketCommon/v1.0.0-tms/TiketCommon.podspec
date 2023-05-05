Pod::Spec.new do |s|
  s.name             = "TiketCommon"
  s.module_name      = "TiketCommon"
  s.version          = "v1.0.0-tms"
  s.summary          = "Tiket Common Module"
  s.homepage         = "https://github.com/tiket"
  s.license          = "MIT"
  s.author           = { "Antoni" => "antoni@tiket.com" }
  s.source           = { git: "git@github.com:tiket/tiketiphone.git", tag: String(s.version) }
  s.platform         = :ios, "12.2"
  s.requires_arc     = true
  s.source_files     = "Tiket/TiketCommon/TiketCommon/Classes/**/*.{swift,h,m,bundle}"

  s.dependency 'SkeletonView', '1.7'
  s.dependency 'RxSwift'
  s.dependency 'RxCocoa'
  s.dependency 'JLRoutes'
  s.dependency 'Kingfisher'
  s.dependency 'SwinjectStoryboard'
  s.dependency 'TiketFramework'
end