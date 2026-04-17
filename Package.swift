// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "UpscopeSDK",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "UpscopeSDK",
            targets: ["UpscopeSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UpscopeSDK",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.4.7/UpscopeSDK-2026.4.7.xcframework.zip",
            checksum: "ffb475d7967877a12ba68775602ff30213ffea145cb0a38a85957a93cdc553e9"
        )
    ]
)
