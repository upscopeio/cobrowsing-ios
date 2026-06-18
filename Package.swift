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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.6.3/UpscopeSDK-2026.6.3.xcframework.zip",
            checksum: "60df677af8d5eb2ae21a5555e158dc6a7c626140d2dcdc344e0b525c8c7ed594"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.6.3/UpscopeBroadcastExtension-2026.6.3.xcframework.zip",
            checksum: "e1fb95d6415aab886b25b0fe85ef4952080d2b5d45fe230b38bce6b9e2481707"
        )
    ]
)
