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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.3.9/UpscopeSDK-2026.3.9.xcframework.zip",
            checksum: "d0c344b518a0cf4c93a2f25faccbee7cf456cf28b8ef3d650f87041f0024ff2a"
        )
    ]
)
