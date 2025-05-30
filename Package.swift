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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.5.9/UpscopeIO-2025.5.9.xcframework.zip",
            checksum: "6b055059a9d8f2d0d68500b8ec7ead9b2cbf9a1b71cb1daeca8b50271a19406b"
        )
    ]
)
