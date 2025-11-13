# Upscope iOS SDK

[![Version](https://img.shields.io/cocoapods/v/UpscopeIO.svg?style=flat)](https://cocoapods.org/pods/UpscopeIO)
[![License](https://img.shields.io/cocoapods/l/UpscopeIO.svg?style=flat)](https://cocoapods.org/pods/UpscopeIO)
[![Platform](https://img.shields.io/cocoapods/p/UpscopeIO.svg?style=flat)](https://cocoapods.org/pods/UpscopeIO)

## Requirements

- iOS 16.0+
- Swift 5.9+
- Xcode 15.0+

## Installation

### CocoaPods

Add the following line to your Podfile:

```ruby
pod 'UpscopeIO', '~> 2025.11.3'
```

Then run:
```bash
pod install
```

### Swift Package Manager

Add the following dependency to your Package.swift:

```swift
dependencies: [
    .package(url: "https://github.com/upscopeio/cobrowsing-ios.git", from: "2025.11.3")
]
```

## Quick Start

### 1. Initialize the SDK

```swift
import UpscopeIO

// In your AppDelegate or App initialization
let upscopeManager = UpscopeManager(apiKey: "YOUR_API_KEY")
UpscopeManager.shared = upscopeManager  // Required for redaction to work
upscopeManager.connect()
```

### 2. Generate a Session Code

```swift
// Generate a code for your support agent
let code = upscopeManager.getCode()
print("Share this code with support: \(code)")
```

### 3. Redact Sensitive Information

#### SwiftUI

```swift
TextField("Credit Card", text: $creditCardNumber)
    .upscopeRedacted()

SecureField("Password", text: $password)
    .upscopeRedacted()
```

#### UIKit

```swift
creditCardTextField.markAsRedacted()
passwordTextField.markAsRedacted()
```

## Advanced Usage

### Custom Configuration

```swift
let config = PartialConfiguration(
    settings: PartialConfiguration.Settings(
        requireAuthorizationForSession: true,
        authorizationPromptTitle: "Screen Sharing Request",
        authorizationPromptMessage: "Support would like to view your screen",
        endOfScreenshareMessage: "Thank you for sharing your screen. The session has ended.",
        translationsOk: "OK"
    )
)

let upscopeManager = UpscopeManager(
    apiKey: "YOUR_API_KEY",
    localConfig: config
)
```

### Session Management

```swift
// Start a session programmatically
upscopeManager.startSession()

// End the current session
upscopeManager.endSession()

// Get session status
if let session = upscopeManager.session {
    print("Session ID: \(session.id)")
    print("Status: \(session.status)")
}
```

## Documentation

For comprehensive documentation, visit [https://cobrowsingapi.com/docs](https://cobrowsingapi.com/docs)

## Support

- 📧 Email: support@upscope.com
- 💬 Live Chat: Visit [upscope.com](https://upscope.com)

## Version

Current version: 2025.11.3
