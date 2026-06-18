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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.6.5/UpscopeSDK-2026.6.5.xcframework.zip",
            checksum: "636a584d843b755aa95325df2350b60be05f9f55900afd39d00fea6b2a81b4de"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.6.5/UpscopeBroadcastExtension-2026.6.5.xcframework.zip",
            checksum: "02d0313bc226562d5b0e114f1e27809a106ac74dfcc3e2d9d33ef14b5e2202cf"
        )
    ]
)
