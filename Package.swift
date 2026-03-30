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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.3.7/UpscopeSDK-2026.3.7.xcframework.zip",
            checksum: "89d865e82084343f785d46113b5b6a4a97068d6144760aae0c37acc0983e1e55"
        )
    ]
)
