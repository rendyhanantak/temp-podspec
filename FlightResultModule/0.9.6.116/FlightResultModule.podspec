Pod::Spec.new do |s|
  s.name             = "FlightResultModule"
  s.module_name      = "FlightResultModule"
  s.version          = "0.9.6.116"
  s.summary          = "FlightResultModule"
  s.homepage         = "https://github.com/tiket"
  s.license          = "MIT"
  s.author           = { "Antoni" => "antoni@tiket.com" }
  s.source           = { :git => "git@github.com:tiket/tiketios-modules.git", :tag => 'FlightResultModule.'+String(s.version) }
  s.platform         = :ios, "9.0"
  s.requires_arc     = true
  s.source_files     = "FlightResultModule/FlightResultModule/Classes/**/*.{swift,h,m,bundle}", "FlightResultModule/FlightResultModule/Mocks/*"
  s.resource_bundles = {'FlightResultModule' => ['FlightResultModule/FlightResultModule/Assets/*.{storyboard,xib,xcassets,json,imageset,png,ttf}',
                                                'FlightResultModule/FlightResultModuleTests/Resources/*'
                                               ]}
  s.dependency 'TiketFramework'
end
