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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.6.2/UpscopeIO-2025.6.2.xcframework.zip",
            checksum: "809e0cee5127934215fab95aeb13cbe8ac122d5e8d57dd07b2ff372103f9494b"
        )
    ]
)
