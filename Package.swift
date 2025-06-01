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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.6.1/UpscopeIO-2025.6.1.xcframework.zip",
            checksum: "8cec19f363114cf6e89202fe7be0cfc62a7c12c2b1966587fe82854518a73a78"
        )
    ]
)
