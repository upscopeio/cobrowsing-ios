# Upscope iOS SDK

## Requirements

- iOS 14.0+
- Swift 5.9+
- Xcode 15.0+

## Installation

### Swift Package Manager (recommended)

Add the following to your `Package.swift`:
```swift
dependencies: [
    .package(url: "https://github.com/upscopeio/cobrowsing-ios.git", from: "2026.7.0"),
]
```

Or in Xcode: File > Add Package Dependencies > enter `https://github.com/upscopeio/cobrowsing-ios`

### CocoaPods

Add to your `Podfile`:
```ruby
pod 'UpscopeSDK', '~> 2026.7.0'
```

Then run `pod install`.

### Manual Installation

Download the XCFramework from the [latest release](https://github.com/upscopeio/cobrowsing-ios/releases/latest) and drag it into your Xcode project.

## Broadcast Extension (full-screen sharing)

Full-screen sharing streams the entire screen (not just your app) via a ReplayKit
Broadcast Upload Extension. The extension links a separate, lean module —
`UpscopeBroadcastExtension` — so your app binary never pulls in the ReplayKit
writer code.

**1. Add a Broadcast Upload Extension target** to your app (File > New > Target >
Broadcast Upload Extension), then add the dependency to *that target only*:

Swift Package Manager — add the `UpscopeBroadcastExtension` product to the
extension target.

CocoaPods:
```ruby
target 'MyBroadcastExtension' do
  pod 'UpscopeSDK/BroadcastExtension', '~> 2026.7.0'
end
```

**2. Share an App Group** between your app and the extension (Signing &
Capabilities > App Groups), then add the group id to the **extension's**
`Info.plist`:
```xml
<key>UpscopeAppGroupId</key>
<string>group.your.app.group</string>
```

**3. Subclass `UpscopeSampleHandler`** in the extension's generated
`SampleHandler.swift` — the base class handles frame capture and IPC. The
published SDK ships `UpscopeBroadcastExtension` as its own module (a separate
xcframework) for both Swift Package Manager and CocoaPods, so the import is the
same either way:
```swift
import UpscopeBroadcastExtension

class SampleHandler: UpscopeSampleHandler {}
```

## Quick Start

```swift
import UpscopeSDK

// In your AppDelegate or early in app lifecycle
let config = UpscopeConfiguration(apiKey: "your-api-key")
try Upscope.shared.initialize(with: config)

// Set visitor identification
Upscope.shared.uniqueId = "user-123"
Upscope.shared.callName = "John Doe"

// Register delegate for events
Upscope.shared.delegate = self
```

## Documentation

For full documentation, visit [userview.com/docs/sdk/ios](https://userview.com/docs/sdk/ios).

## License

Proprietary. See your agreement with Upscope for details.
