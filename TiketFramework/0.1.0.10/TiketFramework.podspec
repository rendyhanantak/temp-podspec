Pod::Spec.new do |s|
  s.name             = "TiketFramework"
  s.module_name      = "TiketFramework"
  s.version          = "0.1.0.10"
  s.summary          = "Shareable iOS BaseFramework in VIPER Architecture"
  s.homepage         = "https://github.com/tiket"
  s.license          = "MIT"
  s.author           = { "Antoni" => "antoni@tiket.com" }
  s.source           = { :git => "git@github.com:tiket-dev/tiketios-modules.git", :tag => 'TiketFramework.'+String(s.version) }
  s.platform         = :ios, "8.0"
  s.requires_arc     = true
  s.source_files     = "TiketFramework/TiketFramework/Classes/**/*.{swift,h,m,bundle}"
  s.dependency 'Alamofire', '3.5.1'
  s.dependency 'Alamofire-Synchronous', '3.0.0'
  s.dependency 'AlamofireImage', '2.5.0'
  s.dependency 'Kingfisher', '2.6.1'
  s.dependency 'Unbox'
  s.dependency 'Swinject', '1.1.5'
end
