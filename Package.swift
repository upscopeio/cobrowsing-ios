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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.4.1/UpscopeSDK-2026.4.1.xcframework.zip",
            checksum: "18e2a078d28f3f5e70381fc4ce4d76aaf6487cdafd21735e18c3df3f9ee56689"
        )
    ]
)
