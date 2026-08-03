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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.8.1/UpscopeSDK-2026.8.1.xcframework.zip",
            checksum: "067a5197dc7b311f12c14103bf3be59ba383f0e4ec36079a7c66b4d8f1cdcda2"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.8.1/UpscopeBroadcastExtension-2026.8.1.xcframework.zip",
            checksum: "03cf1a3b4997b8c9d7b6730a9e3aca92c623e254a5fc2d57d2d3e62a83b8629f"
        )
    ]
)
