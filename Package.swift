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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.4.3/UpscopeSDK-2026.4.3.xcframework.zip",
            checksum: "f7648c928f90249c137452503e53b43ac7f89b967d01dd6d900b461bccaf367d"
        )
    ]
)
