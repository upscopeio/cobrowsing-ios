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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.7/UpscopeSDK-2026.7.7.xcframework.zip",
            checksum: "6dc60d4b12d2aa73afa62c6d19ab8be37da9bc6df26c791cfff1c529d4ca77fa"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.7/UpscopeBroadcastExtension-2026.7.7.xcframework.zip",
            checksum: "8395157574dbfc2164158bdd44106874426276fa6f65f220c48c2639761de9ff"
        )
    ]
)
