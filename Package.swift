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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.3.11/UpscopeSDK-2026.3.11.xcframework.zip",
            checksum: "a1cfd2928e0ed266834d53052481ab1f4ab72a31e520c1c1059d9f55438cb7c0"
        )
    ]
)
