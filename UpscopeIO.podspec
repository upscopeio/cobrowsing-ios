Pod::Spec.new do |s|
  s.name             = 'UpscopeIO'
  s.version          = '2025.6.2'
  s.summary          = 'Upscope.io iOS SDK for cobrowsing'
  s.description      = <<-DESC
                       The official iOS SDK for Upscope.io, enabling cobrowsing functionality in iOS apps.
                       DESC
  s.homepage         = 'https://github.com/upscopeio/cobrowsing-ios'
  s.license          = { :type => 'Proprietary', :file => 'LICENSE.md' }
  s.author           = { 'Upscope' => 'support@upscope.io' }
  s.source           = { :git => 'https://github.com/upscopeio/cobrowsing-ios.git', :tag => s.version.to_s }
  s.platform         = :ios, '16.0'
  s.swift_version    = '5.9'
  s.vendored_frameworks = 'UpscopeIO.xcframework'
end
