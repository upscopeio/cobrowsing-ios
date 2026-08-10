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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.8.2/UpscopeSDK-2026.8.2.xcframework.zip",
            checksum: "cdd425fb66a30aa5fc25861ece6df73b5e11166d5d84bc4985b046343289219e"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.8.2/UpscopeBroadcastExtension-2026.8.2.xcframework.zip",
            checksum: "5b2341ebb77fa74cc602d9342568a6e2a0439a123da59f32a9642460fa9dd3b9"
        )
    ]
)
