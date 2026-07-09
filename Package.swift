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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.4/UpscopeSDK-2026.7.4.xcframework.zip",
            checksum: "077c28784806f0a775e1a0c727e6339d12baf76a56f74db466ce93619e151edc"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.4/UpscopeBroadcastExtension-2026.7.4.xcframework.zip",
            checksum: "3c772f1f82b0bf98c108400b631633fb45ed7efa6d5dd1fc3dd9a0e02826db27"
        )
    ]
)
