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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.5.16/UpscopeIO-2025.5.16.xcframework.zip",
            checksum: "94237094796947671d9e95e5b198b5476edf4637809389b24f37f3b76e3d78b0"
        )
    ]
)
