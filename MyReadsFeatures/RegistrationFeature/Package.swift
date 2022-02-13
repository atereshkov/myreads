// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RegistrationFeature",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "RegistrationFeature",
            targets: ["RegistrationFeature"]),
    ],
    dependencies: [
        .package(path: "../MyReadsComponentsKit")
    ],
    targets: [
        .target(
            name: "RegistrationFeature",
            dependencies: ["MyReadsComponentsKit"]),
        .testTarget(
            name: "RegistrationFeatureTests",
            dependencies: ["RegistrationFeature"]),
    ]
)
