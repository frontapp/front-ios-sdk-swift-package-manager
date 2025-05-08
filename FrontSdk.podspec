Pod::Spec.new do |s|
  s.name             = 'FrontSdk'
  s.version          = '0.0.1-beta'
  s.summary          = 'The official Front SDK for iOS applications.' 
  
  s.homepage         = 'https://dev.frontapp.com/docs/'
  s.license          = { :type => 'Apache License 2.0' }
  s.author           = { 'Front' => 'support@front.com' }

  s.source           = { :http => "https://github.com/frontapp/front-ios-sdk-swift-package-manager/releases/download/#{s.version}/FrontSdk-#{s.version}.zip", :type => 'zip' } 

  s.ios.deployment_target = '15.0'
  s.swift_version = '5.9'
  s.ios.vendored_frameworks = 'FrontSdk.xcframework'
  s.ios.frameworks = 'SwiftUI' 
end 