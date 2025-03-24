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
            url: "https://github.com/frontapp/front-ios-sdk-swift-package-manager/releases/download/0.0.0-alpha.4/FrontSdk-0.0.0-alpha.4.zip",
            checksum: "9af7a302f7803b1dc4d1d5f3eaf298d1c8b2acfc9cf9147874a8b2a5f061263b"
        ),
        .testTarget(
            name: "FrontSdkTests",
            dependencies: ["FrontSdk"]
        ),
    ]
)
