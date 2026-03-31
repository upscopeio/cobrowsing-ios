Pod::Spec.new do |s|
  s.name            = "UpscopeSDK"
  s.version         = "2026.3.13"
  s.summary         = "Upscope iOS cobrowsing SDK — live screen sharing for support teams."
  s.description     = <<-DESC
    Enable real-time cobrowsing in your iOS app. Agents can view the user's
    screen, draw annotations, and interact remotely — no user action required.
  DESC

  s.homepage        = "https://upscope.io"
  s.license         = { :type => "Proprietary", :text => "See your agreement with Upscope for details." }
  s.author          = { "Upscope" => "devops@upscope.com" }

  s.platform        = :ios, "14.0"
  s.swift_version   = "5.9"

  s.source          = {
    :http => "https://github.com/upscopeio/cobrowsing-ios/releases/download/v#{s.version}/UpscopeSDK-#{s.version}.xcframework.zip"
  }
  s.vendored_frameworks = "UpscopeSDK.xcframework"
end
