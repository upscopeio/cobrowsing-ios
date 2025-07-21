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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.7.1/UpscopeIO-2025.7.1.xcframework.zip",
            checksum: "84844f10ad091eab5921a10cadc4497f4cef34a31a3c1b0b986bb610774ae493"
        )
    ]
)
