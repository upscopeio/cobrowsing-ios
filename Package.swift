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
        // Add this product to a Broadcast Upload Extension target for
        // full-screen sharing; subclass UpscopeSampleHandler.
        .library(
            name: "UpscopeBroadcastExtension",
            targets: ["UpscopeBroadcastExtension"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UpscopeSDK",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.8.3/UpscopeSDK-2026.8.3.xcframework.zip",
            checksum: "d64927c229900eeb3dbb33593d361360ba45effd47d88a78dc038a44dc196b96"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.8.3/UpscopeBroadcastExtension-2026.8.3.xcframework.zip",
            checksum: "e7178e35e0819b72202ab398a7a8c979119e9a64572d9fcfe6fd36b86f0d3cf1"
        )
    ]
)
