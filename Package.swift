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
            checksum: "a8bb500017d096fadeff3c3fa3692d201a5139f0c6ad51c7051ced9ecebd550b"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.6.4/UpscopeBroadcastExtension-2026.6.4.xcframework.zip",
            checksum: "0a81a7a94b039d6a7bdbb11f33b3aadeacbc23906e515f0f364f69dd9207e6b8"
        )
    ]
)
