// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyReadsComponentsKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "MyReadsComponentsKit",
            targets: ["MyReadsComponentsKit"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "MyReadsComponentsKit",
            dependencies: []),
        .testTarget(
            name: "MyReadsComponentsKitTests",
            dependencies: ["MyReadsComponentsKit"]),
    ]
)
