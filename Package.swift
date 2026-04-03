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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.4.4/UpscopeSDK-2026.4.4.xcframework.zip",
            checksum: "9d3fbacfad07e7f4a150fbe481e5ffe0b4de213709724691f96c3b5d7c783e97"
        )
    ]
)
