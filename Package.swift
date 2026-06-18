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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.6.4/UpscopeSDK-2026.6.4.xcframework.zip",
            checksum: "713d1c1f0042ff49c76a1033f764910e96a745bbe103b542fc32988beae9d3e7"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.6.4/UpscopeBroadcastExtension-2026.6.4.xcframework.zip",
            checksum: "e3a1ef3bc11d6b92943350a27692c69430d024b0b1b62ec5dc2e4c7503af40eb"
        )
    ]
)
