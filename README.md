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
    .package(url: "https://github.com/upscopeio/cobrowsing-ios.git", from: "2026.3.13"),
]
```

Or in Xcode: File > Add Package Dependencies > enter `https://github.com/upscopeio/cobrowsing-ios`

### CocoaPods

Add to your `Podfile`:
```ruby
pod 'UpscopeSDK', '~> 2026.3.13'
```

Then run `pod install`.

### Manual Installation

Download the XCFramework from the [latest release](https://github.com/upscopeio/cobrowsing-ios/releases/latest) and drag it into your Xcode project.

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

For full documentation, visit [docs.upscope.io](https://docs.upscope.io).

## License

Proprietary. See your agreement with Upscope for details.
