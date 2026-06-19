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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.6.6/UpscopeSDK-2026.6.6.xcframework.zip",
            checksum: "c7f8ea45c71805eecec28791e4cb0cc186a55b6ce6a5d6fbcda41090945f8d14"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.6.6/UpscopeBroadcastExtension-2026.6.6.xcframework.zip",
            checksum: "1e50ea7900520bf506a119ff6233a716b09e0e229819cea547f9fe2ebb902589"
        )
    ]
)
