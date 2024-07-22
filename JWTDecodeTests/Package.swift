// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JWTDecodeTests",
    platforms: [.iOS(.v14), .macOS(.v11), .tvOS(.v14), .watchOS(.v7), .visionOS(.v1)],
    dependencies: [
        .package(path: "../"),
        .package(url: "https://github.com/Quick/Quick.git", .upToNextMajor(from: "7.0.0")),
        .package(url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "12.0.0")),
    ],
    targets: [
        .testTarget(
            name: "JWTDecode.swiftTests",
            dependencies: [
                .product(name: "JWTDecode", package: "JWTDecode.swift"),
                .product(name: "Quick", package: "Quick"),
                .product(name: "Nimble", package: "Nimble"),
            ],
            path: "../JWTDecodeTests",
            exclude: ["Info.plist"])
    ])
