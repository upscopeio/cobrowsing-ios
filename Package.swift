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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.6.1/UpscopeSDK-2026.6.1.xcframework.zip",
            checksum: "b6f90c86ea3291f6986facd682e29128e94583547b3e51e553101020e524839b"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.6.1/UpscopeBroadcastExtension-2026.6.1.xcframework.zip",
            checksum: "78ae5f30c2749e4fc2194b74b55ceb476c3807f099ba2cf0cbc2dd3b2b8c74ab"
        )
    ]
)
