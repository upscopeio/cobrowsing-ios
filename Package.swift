// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "UpscopeIO",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "UpscopeIO",
            targets: ["UpscopeIO"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UpscopeIO",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.5.10/UpscopeIO-2025.5.10.xcframework.zip",
            checksum: "defdd636c43c5e84debb63d145e178e6a8d3d302c207300f49e2bd7151c5b6c3"
        )
    ]
)
