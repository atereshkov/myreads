// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BookDetailsFeature",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "BookDetailsFeature",
            targets: ["BookDetailsFeature"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "BookDetailsFeature",
            dependencies: []),
        .testTarget(
            name: "BookDetailsFeatureTests",
            dependencies: ["BookDetailsFeature"]),
    ]
)
