// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppState",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AppState",
            targets: ["AppState"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "AppState",
            dependencies: []),
        .testTarget(
            name: "AppStateTests",
            dependencies: ["AppState"]),
    ]
)
