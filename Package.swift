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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.11.6/UpscopeIO-2025.11.6.xcframework.zip",
            checksum: "1f6dad45222cac8b474c95dcde04bb68eb05f29a7193afeb3639459f3a2fae78"
        )
    ]
)
