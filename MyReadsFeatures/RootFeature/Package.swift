// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RootFeature",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "RootFeature",
            targets: ["RootFeature"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "RootFeature",
            dependencies: []),
        .testTarget(
            name: "RootFeatureTests",
            dependencies: ["RootFeature"]),
    ]
)
