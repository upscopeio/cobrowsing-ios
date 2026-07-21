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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.6/UpscopeSDK-2026.7.6.xcframework.zip",
            checksum: "27a3ca38990cde451d7d19a6da17ef2b00676951aa6563d86102e21d8b90eda3"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.6/UpscopeBroadcastExtension-2026.7.6.xcframework.zip",
            checksum: "f187c265c4ac9230517083867c991540ade65991d850e0e0fdc386c97e9c1eea"
        )
    ]
)
