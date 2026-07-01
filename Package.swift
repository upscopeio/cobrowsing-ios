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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.0/UpscopeSDK-2026.7.0.xcframework.zip",
            checksum: "b69d94335c2deebabf60cf0ab1278990f3d503c2770ce5e3227dce6e8b9a6c6a"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.0/UpscopeBroadcastExtension-2026.7.0.xcframework.zip",
            checksum: "53c1cc43b0943a27bed1b127fb44d9d1f95eeb6c48f92f6435d686c96ef560b8"
        )
    ]
)
