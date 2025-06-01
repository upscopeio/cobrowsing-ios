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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.6.4/UpscopeIO-2025.6.4.xcframework.zip",
            checksum: "ced4b10725d0329be1555633def2b91f3bb3b815b54b6df2f6c4383ca38843e0"
        )
    ]
)
