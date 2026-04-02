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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.4.0/UpscopeSDK-2026.4.0.xcframework.zip",
            checksum: "2c79d9c8b63734e6a5a8dc46af3a70abc60f9ddc1ee7c4d26359be9af8922bdd"
        )
    ]
)
