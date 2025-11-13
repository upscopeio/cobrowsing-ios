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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.11.3/UpscopeIO-2025.11.3.xcframework.zip",
            checksum: "2a2f520fa0c94bc34238a2fe6a0590b00b5ddb1891ec736434907ee1131629c1"
        )
    ]
)
