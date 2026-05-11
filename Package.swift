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
    ],
    targets: [
        .binaryTarget(
            name: "UpscopeSDK",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.5.0/UpscopeSDK-2026.5.0.xcframework.zip",
            checksum: "e86722457c3156e31536136d48ca72e6f693290c11d8d698a746126e7e140e1e"
        )
    ]
)
