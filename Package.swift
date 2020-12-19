// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMSearch",
    products: [
      .executable(name: "spmsearch", targets: ["SPMSearch"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.3.0"),
        .package(url: "https://github.com/onevcat/Rainbow", from: "3.0.0"),
        .package(url: "https://github.com/scottrhoyt/SwiftyTextTable.git", from: "0.5.0")
    ],
    targets: [
        .target(name: "SPMSearch", dependencies: [
            .product(name: "ArgumentParser", package: "swift-argument-parser"),
            "Rainbow",
            "SwiftyTextTable"
        ]),
        .testTarget(
            name: "SPMSearchTests",
            dependencies: ["SPMSearch"]),
    ]
)
