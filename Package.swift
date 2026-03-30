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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.3.5/UpscopeSDK-2026.3.5.xcframework.zip",
            checksum: "2e641425005ce899730021cae0227d4a1095b1c600eb8b71f27e3fc70d388c8b"
        )
    ]
)
