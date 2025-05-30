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
            url: "https://github.com/upscopeio/cobrowsing-ios/releases/download/v2025.5.15/UpscopeIO-2025.5.15.xcframework.zip",
            checksum: "29986c73b17101b8977b241397530b11910cba8e469fa4080ff7848fd18562c8"
        )
    ]
)
