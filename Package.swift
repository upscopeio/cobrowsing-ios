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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.3/UpscopeSDK-2026.7.3.xcframework.zip",
            checksum: "e8bb4492294ba82b46a8156560f61f22a73417a44b4bc494f004d915ad5f3f0f"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.3/UpscopeBroadcastExtension-2026.7.3.xcframework.zip",
            checksum: "fbab381838c960d96382a7e30ae7637a5564a6559bccce13245c5f2449ac57ee"
        )
    ]
)
