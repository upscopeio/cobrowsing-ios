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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.4.2/UpscopeSDK-2026.4.2.xcframework.zip",
            checksum: "0f8c2c22787a0944a2de462546c820ad4875ed23a33b5f83de55ce4e95928b28"
        )
    ]
)
