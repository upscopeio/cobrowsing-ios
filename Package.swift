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
        // Add this product to a Broadcast Upload Extension target for
        // full-screen sharing; subclass UpscopeSampleHandler.
        .library(
            name: "UpscopeBroadcastExtension",
            targets: ["UpscopeBroadcastExtension"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UpscopeSDK",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.2/UpscopeSDK-2026.7.2.xcframework.zip",
            checksum: "e874cb4d7e76ec21b0afeb78e503d11d62cf8c5a9c6c413d05932204b753f489"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.2/UpscopeBroadcastExtension-2026.7.2.xcframework.zip",
            checksum: "4928cdb69493e9bb3903a47ab17ce155cdd1e13de8d633418e744191c214b9f7"
        )
    ]
)
