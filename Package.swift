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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.5.14/UpscopeIO-2025.5.14.xcframework.zip",
            checksum: "97f3d9012b30647f2ed96a51fe08e0c9267ea1392bdc6dead16fa7c923b481a3"
        )
    ]
)
