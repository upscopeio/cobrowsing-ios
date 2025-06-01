// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "UpscopeIO",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "UpscopeIO",
            targets: ["UpscopeIO"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "UpscopeIO",
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.6.3/UpscopeIO-2025.6.3.xcframework.zip",
            checksum: "3eeb770c09e117a5da49aa95ced19bdfc6e6e04cc92c72beafa547d4270b3d89"
        )
    ]
)
