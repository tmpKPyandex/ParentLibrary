// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ParentLibrary",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ParentLibrary",
            targets: ["ParentLibrary"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tmpKPyandex/ChildLibrary", exact: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ParentLibrary",
            dependencies: [.product(name: "ChildLibrary", package: "ChildLibrary")]),
        .testTarget(
            name: "ParentLibraryTests",
            dependencies: ["ParentLibrary"]),
    ]
)
