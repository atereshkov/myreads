// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoginFeature",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "LoginFeature",
            targets: ["LoginFeature"]),
    ],
    dependencies: [
        .package(path: "../MyReadsComponentsKit")
    ],
    targets: [
        .target(
            name: "LoginFeature",
            dependencies: ["MyReadsComponentsKit"]),
        .testTarget(
            name: "LoginFeatureTests",
            dependencies: ["LoginFeature"]),
    ]
)
