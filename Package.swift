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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.1/UpscopeSDK-2026.7.1.xcframework.zip",
            checksum: "60555968e2299ce9fefd1d4e75749538b915569a95329cc42a6ad86e65508d11"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.1/UpscopeBroadcastExtension-2026.7.1.xcframework.zip",
            checksum: "771dc7c0ed90919a90f22f1b24af731ee0410d3dbaa48a891937396043f6943f"
        )
    ]
)
