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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2026.4.6/UpscopeSDK-2026.4.6.xcframework.zip",
            checksum: "e902a512973889fb30321cd8988d04ca9e9f4427ab501ca3063e4d445b8337ea"
        )
    ]
)
