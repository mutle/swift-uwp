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
            revision: "a5988c9ec83d9ae1f1a4cd83051127f625ff60f7"
        ),
        .package(
            url: "https://github.com/mutle/swift-windowsfoundation",
            revision: "a112318dc42f2031b18a7a2db5d03fc46f452449"
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
