Pod::Spec.new do |s|
    s.name             = 'TiketCoreData'
    s.version          = 'v1.0.0-tms'
    s.summary          = 'Tiket Core Data'
    s.description      = 'Tiket Core Data'
    s.homepage         = 'https://github.com/tiket/tiketiphone'
    s.license          = "MIT"
    s.author           = { 'azmi' => 'muhammad.khairullah@tiket.com' }
    s.source           = { git: "git@github.com:tiket/tiketiphone.git", tag: String(s.version) }
    s.requires_arc     = true
    s.module_name      = 'TiketCoreData'
    
    s.ios.deployment_target = '12.2'
    s.source_files          = ['Tiket/TiketCoreData/TiketCoreData/Classes/**/*.swift']
    s.resources             = "Tiket/TiketCoreData/TiketCoreData/Classes/DataModel/*.xcdatamodeld"
    
    s.frameworks = ['Foundation', 'UIKit', 'CoreData']
    s.dependency 'TiketCommon'
    
    end
    