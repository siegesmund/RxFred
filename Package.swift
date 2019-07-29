// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "rxFred",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "rxFred",
            targets: ["rxFred"]),
    ],
    dependencies: [
        .package(url: "https://github.com/siegesmund/fred", branch: "master"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "rxFred",
            dependencies: ["fred", "RxSwift"]),
        .testTarget(
            name: "rxFredTests",
            dependencies: ["rxFred"]),
    ]
)
