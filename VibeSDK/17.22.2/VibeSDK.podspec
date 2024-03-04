Pod::Spec.new do |s|
    s.name = 'VibeSDK'
    s.version = "17.22.2"
    s.summary = 'Vibe SDK'
    s.homepage = 'https://www.axonvibe.com/'
    s.author = 'Axon Vibe'
    s.platform = :ios
    s.ios.deployment_target = '12.0'
    s.swift_version = '5.1'
    s.requires_arc = true
    s.source = { http: "https://axonvibe.jfrog.io/axonvibe/ios-sdk-release/VibeSDK/#{s.version}/VibeSDK.tar.gz" }

    s.default_subspec = 'Core'

    s.subspec 'Core' do |ss|
        ss.ios.vendored_frameworks = 'VibeSDK.xcframework'
    end
    
    s.frameworks = 'UIKit', 'CoreLocation', 'CoreMotion', 'UserNotifications'
end
