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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.3.6/UpscopeSDK-2026.3.6.xcframework.zip",
            checksum: "62fee019da3491f14c35b70b96e58ebf2febd618b29a04eba0d53fa166c5c258"
        )
    ]
)
