// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "JWTDecode",
    platforms: [.iOS(.v13), .macOS(.v11), .tvOS(.v13), .watchOS(.v7), .visionOS(.v1)],
    products: [.library(name: "JWTDecode", targets: ["JWTDecode"])],
    dependencies: [
    ],
    targets: [
        .target(
            name: "JWTDecode",
            dependencies: [],
            path: "JWTDecode",
            exclude: ["Info.plist"]),
    ])
