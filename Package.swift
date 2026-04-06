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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.4.5/UpscopeSDK-2026.4.5.xcframework.zip",
            checksum: "9f50ed838834bd87a09598b681b5930516e8a400ef259765cac6a53f9ed431ae"
        )
    ]
)
