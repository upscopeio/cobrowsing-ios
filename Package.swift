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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.11.5/UpscopeIO-2025.11.5.xcframework.zip",
            checksum: "81adf013f19a5ac13d494a1dfc4121c29934c7c2327245f22491e8b24cb1e38b"
        )
    ]
)
