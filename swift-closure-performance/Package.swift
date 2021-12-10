// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-closure-performance",
    platforms: [.iOS(.v15), .macOS(.v12)],
    dependencies: [
        .package(name: "Benchmark", url: "https://github.com/google/swift-benchmark", from: "0.1.1")
    ],
    targets: [
        .target(name: "swift-closure-performance", dependencies: [.product(name: "Benchmark", package: "Benchmark")]),
        .testTarget(name: "swift-closure-performanceTests", dependencies: ["swift-closure-performance"]),
    ]
)
