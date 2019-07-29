// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "rxFred",
    products: [
        .library(
            name: "rxFred",
            targets: ["rxFred"]),
    ],
    dependencies: [
        .package(url: "https://github.com/siegesmund/fred", branch: "master"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "rxFred",
            dependencies: ["fred", "RxSwift"]),
        .testTarget(
            name: "rxFredTests",
            dependencies: ["rxFred"]),
    ]
)
