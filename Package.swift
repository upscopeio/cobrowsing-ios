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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.6.1/UpscopeSDK-2026.6.1.xcframework.zip",
            checksum: "26f1692f019f53bbf968c770f98cd4919c3d31e5846d84ad24b53db478f9b887"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.6.1/UpscopeBroadcastExtension-2026.6.1.xcframework.zip",
            checksum: "4b5badf60e899c48c3c5a1fd6054a65fd3e653718b012ce12798c08a721adf15"
        )
    ]
)
