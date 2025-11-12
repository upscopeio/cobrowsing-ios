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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.11.0/UpscopeIO-2025.11.0.xcframework.zip",
            checksum: "146d4a63c5383a1c159c0275bac9cf1d1d225c221ae57cbe8a6f5a648cd682d5"
        )
    ]
)
