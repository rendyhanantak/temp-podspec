Pod::Spec.new do |s|
  s.name             = "TiketFramework"
  s.module_name      = "TiketFramework"
  s.version          = "0.4.1.35"
  s.summary          = "Shareable iOS BaseFramework in VIPER Architecture - for swift 3"
  s.homepage         = "https://github.com/tiket"
  s.license          = "MIT"
  s.author           = { "Antoni" => "antoni@tiket.com" }
  s.source           = { :git => "git@github.com:tiket/tiketios-modules.git", :tag => 'TiketFramework.'+String(s.version) }
  s.platform         = :ios, "9.0"
  s.requires_arc     = true
  s.source_files     = "TiketFramework/TiketFramework/Classes/**/*.{swift,h,m,bundle}"
  s.dependency 'Alamofire', '~> 4.0'
  s.dependency 'Alamofire-Synchronous', '4.0.0'
  s.dependency 'Kingfisher', '4.8.0'
  s.dependency 'Unbox', '2.3.0'
  s.dependency 'Swinject', '2.4.1'
  s.dependency 'SwinjectStoryboard', '2.0.1'
end
