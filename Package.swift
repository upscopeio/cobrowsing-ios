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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.5.17/UpscopeIO-2025.5.17.xcframework.zip",
            checksum: "d73aef5b28756a855f7214e10a47b4ab6689e28d107043f0eb9eaf5b3718b019"
        )
    ]
)
