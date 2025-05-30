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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.5.9/UpscopeIO-2025.5.9.xcframework.zip",
            checksum: "e0eaa2c0249fa675a1dc6eb5486d35d0b4c8af8a3185976a39d66c49c3e9307f"
        )
    ]
)
