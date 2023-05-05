Pod::Spec.new do |s|
    s.name             = 'EagleEye'
    s.version          = 'v1.0.0-tms'
    s.summary          = 'Eagle Eye'
    s.description      = 'Eagle Eye'
    s.homepage         = 'https://github.com/tiket/tiketiphone'
    s.license          = { :type => 'MIT' }
    s.author           = { "Antoni" => "antoni@tiket.com" }
    s.source           = { git: "git@github.com:tiket/tiketiphone.git", tag: String(s.version) }
    s.requires_arc     = true
    s.module_name      = 'EagleEye'

    s.ios.deployment_target = '12.2'
    s.source_files = [
        'Tiket/EagleEye/EagleEye/Classes/**/*.swift'
    ]

    s.resources = [
        'Tiket/EagleEye/EagleEye/**/*.xcassets'
    ]

    s.frameworks = ['Foundation']
    s.dependency 'RxSwift'
    s.dependency 'RxCocoa'
    s.dependency 'TiketCommon'
    s.dependency 'TiketCoreData'
end