// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "UpscopeSDK",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "UpscopeSDK",
            targets: ["UpscopeSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UpscopeSDK",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.3.12/UpscopeSDK-2026.3.12.xcframework.zip",
            checksum: "13705c50edf282e1d453ada22509009b3106ff28be65ea3491097e6cc7f1b573"
        )
    ]
)
