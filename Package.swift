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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.6.0/UpscopeSDK-2026.6.0.xcframework.zip",
            checksum: "8f0c300e2aa8ed6a47404e62e14a784cad494955071f1e573262b1b1a3440b6c"
        )
    ]
)
