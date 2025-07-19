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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.7.0/UpscopeIO-2025.7.0.xcframework.zip",
            checksum: "079af90f60f8a36852fdc294674aeb6f8b586cb08bd8038bca1131e30a28f70f"
        )
    ]
)
