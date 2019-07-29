// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxFred",
    products: [
        .library(
            name: "RxFred",
            targets: ["RxFred"]),
    ],
    dependencies: [
        .package(url: "https://github.com/siegesmund/Fred", .branch("master")),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "RxFred",
            dependencies: ["Fred", "RxSwift"]),
        .testTarget(
            name: "RxFredTests",
            dependencies: ["RxFred"]),
    ]
)
