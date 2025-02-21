// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FrontSdk",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FrontSdk",
            targets: ["FrontSdk"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "FrontSdk",
            url: "https://github.com/frontapp/front-ios-sdk-swift-package-manager/releases/download/0.0.0-alpha.1/FrontSdk-0.0.0-alpha.1.zip",
            checksum: "aa671da1f16afe7bde88bc14b0d5659b52c9f05f88775e7115c13fed3850f5eb"
        ),
        .testTarget(
            name: "FrontSdkTests",
            dependencies: ["FrontSdk"]
        ),
    ]
)
