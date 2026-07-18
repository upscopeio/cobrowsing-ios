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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.5/UpscopeSDK-2026.7.5.xcframework.zip",
            checksum: "ef5aa2d638af12067a165316be3535cd045d82f84684f07068d3d00af12fcfdb"
        ),
        .binaryTarget(
            name: "UpscopeBroadcastExtension",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.7.5/UpscopeBroadcastExtension-2026.7.5.xcframework.zip",
            checksum: "6dd02529ac657e2fc6a34e892e215abf584299be0484d750818a28ee284d27e7"
        )
    ]
)
