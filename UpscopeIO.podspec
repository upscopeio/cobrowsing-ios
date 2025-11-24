Pod::Spec.new do |s|
  s.name             = 'UpscopeIO'
  s.version          = '2025.11.6'
  s.summary          = 'Upscope.io iOS SDK for cobrowsing'
  s.description      = <<-DESC
                       The official iOS SDK for Upscope.io, enabling cobrowsing functionality in iOS apps.
                       DESC
  s.homepage         = 'https://github.com/upscopeio/cobrowsing-ios'
  s.license          = { :type => 'Proprietary', :text => 'Proprietary license. See your agreement with Upscope for details.' }
  s.author           = { 'Upscope' => 'support@upscope.io' }
  s.source           = { :http => "https://github.com/upscopeio/cobrowsing-ios/releases/download/v#{s.version}/UpscopeIO-#{s.version}.xcframework.zip" }
  s.platform         = :ios, '16.0'
  s.swift_version    = '5.9'
  s.vendored_frameworks = 'UpscopeIO.xcframework'
end
