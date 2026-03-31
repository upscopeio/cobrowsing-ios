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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.3.13/UpscopeSDK-2026.3.13.xcframework.zip",
            checksum: "02f5883771ad3daa6efa53fcdfe2a71be272a5815a2aee9227bef476976c4183"
        )
    ]
)
