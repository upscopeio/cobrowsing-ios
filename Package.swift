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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.6.5/UpscopeIO-2025.6.5.xcframework.zip",
            checksum: "f901aac77e5df949bc6189c822af16a9a73ece1533b165e0c3926fdf4f85cce5"
        )
    ]
)
