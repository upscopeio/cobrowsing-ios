Pod::Spec.new do |s|
  s.name            = "UpscopeSDK"
  s.version         = "2026.6.5"
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

  # Single combined archive holds both xcframeworks; each subspec vendors
  # its own, so a host app linking the default subspec never pulls the
  # extension framework into its binary.
  s.source          = {
    :http => "https://github.com/upscopeio/cobrowsing-ios/releases/download/v#{s.version}/UpscopeSDK-pods-#{s.version}.zip"
  }

  s.default_subspec = "Core"

  # Host-app SDK. `pod 'UpscopeSDK'` resolves here.
  s.subspec "Core" do |core|
    core.vendored_frameworks = "UpscopeSDK.xcframework"
  end

  # Broadcast Upload Extension (full-screen sharing). Add to the extension
  # target only: `pod 'UpscopeSDK/BroadcastExtension'`.
  s.subspec "BroadcastExtension" do |broadcast|
    broadcast.vendored_frameworks = "UpscopeBroadcastExtension.xcframework"
    broadcast.frameworks          = "ReplayKit"
  end
end
