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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.3.8/UpscopeSDK-2026.3.8.xcframework.zip",
            checksum: "2b47fbb976e54cb8bb5d676b8950993a03018388b664c5b46c48801597abc66b"
        )
    ]
)
