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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.8.0/UpscopeSDK-2026.8.0.xcframework.zip",
            checksum: "28f2ef0cfe3c135dba6efeeb38589d121045bc0c0b48123fdedba16a53423777"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.8.0/UpscopeBroadcastExtension-2026.8.0.xcframework.zip",
            checksum: "0a15eaa058581f4acc31232e55b390e84922ab44e2cb3ada25ab105487107caf"
        )
    ]
)
