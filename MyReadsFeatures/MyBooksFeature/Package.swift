// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyBooksFeature",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "MyBooksFeature",
            targets: ["MyBooksFeature"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "MyBooksFeature",
            dependencies: []),
        .testTarget(
            name: "MyBooksFeatureTests",
            dependencies: ["MyBooksFeature"]),
    ]
)
