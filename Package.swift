// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-uwp",
    products: [
        .library(name: "UWP", type: .dynamic, targets: ["UWP"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/mutle/swift-cwinrt",
            revision: "e9db556eb47958cd904366647b1a45c831cbc38f"
        ),
        .package(
            url: "https://github.com/mutle/swift-windowsfoundation",
            revision: "04ba0d2f81c2cf137147de485619fa5a5d3ab974"
        ),
    ],
    targets: [
        .target(
            name: "UWP",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),
            ]
        ),
        .testTarget(
            name: "UWPTests",
            dependencies: ["UWP"]
        ),
    ]
)
