Pod::Spec.new do |s|

    s.platform = :ios
    s.ios.deployment_target = '12.0'
    s.name = "VibeSDK"
    s.summary = "Vibe SDK"
    s.requires_arc = true

    s.version = "17.2.0"

    s.author = "Axon Vibe"

    s.homepage = "https://www.axonvibe.com/"

    s.source = { http: "https://axonvibe.jfrog.io/axonvibe/ios-sdk-release/VibeSDK/#{s.version}/VibeSDK.tar.gz" }

    s.frameworks = 'UIKit', 'CoreLocation', 'CoreMotion', 'UserNotifications'

    s.default_subspec = 'Core'

    s.subspec 'Core' do |ss|
        ss.ios.vendored_frameworks = 'VibeSDK.xcframework'
    end

    s.swift_version = "5.1"

end
