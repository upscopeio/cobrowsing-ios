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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.5.12/UpscopeIO-2025.5.12.xcframework.zip",
            checksum: "5dc3cecff660d3d3acb919b8fd17f63e966e67f6032901ac33fbb50d75a21c76"
        )
    ]
)
