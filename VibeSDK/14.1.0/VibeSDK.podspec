Pod::Spec.new do |s|

    s.platform = :ios
    s.ios.deployment_target = '10.0'
    s.name = "VibeSDK"
    s.summary = "Vibe SDK"
    s.requires_arc = true

    s.version = "14.1.0"

    s.author = "Axon Vibe"

    s.homepage = "https://www.axonvibe.com/"

    s.source = { http: "https://axonvibe.jfrog.io/axonvibe/cocoapods-local/VibeSDK/#{s.version}/VibeSDK.tar.gz" }

    s.framework = "UIKit"
    s.framework = "CoreLocation"
    s.framework = "CoreMotion"
    s.framework = "UserNotifications"

    s.default_subspec = 'Core'

    s.subspec 'Core' do |ss|
        ss.ios.vendored_frameworks = 'VibeSDK.framework'
    end

    s.swift_version = "5.1"

end
