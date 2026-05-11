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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.4.8/UpscopeSDK-2026.4.8.xcframework.zip",
            checksum: "934b76f3734b022c50142206b40d86a4445871ec61690ac6d4a27c77353e2dd9"
        )
    ]
)
