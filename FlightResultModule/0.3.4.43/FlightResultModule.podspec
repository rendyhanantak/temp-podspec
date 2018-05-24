Pod::Spec.new do |s|
  s.name             = "FlightResultModule"
  s.module_name      = "FlightResultModule"
  s.version          = "0.3.4.43"
  s.summary          = "FlightResultModule"
  s.homepage         = "https://github.com/tiket"
  s.license          = "MIT"
  s.author           = { "Antoni" => "antoni@tiket.com" }
  s.source           = { :git => "git@github.com:tiket-dev/tiketios-modules.git", :tag => 'FlightResultModule.'+String(s.version) }
  s.platform         = :ios, "8.0"
  s.requires_arc     = true
  s.source_files     = "FlightResultModule/FlightResultModule/Classes/**/*.{swift,h,m,bundle}", "FlightResultModule/FlightResultModule/Mocks/*"
  s.resource_bundles = {'FlightResultModule' => ['FlightResultModule/FlightResultModule/Assets/*.{storyboard,xib,xcassets,json,imageset,png,ttf}',
                                                'FlightResultModule/FlightResultModuleTests/Resources/*'
                                               ]}
  s.dependency 'TiketFramework'
end
