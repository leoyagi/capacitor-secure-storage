// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SecureStoragePlugin",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "SecureStoragePlugin",
            targets: ["SecureStoragePlugin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "8.0.0")
    ],
    targets: [
        .target(
            name: "SecureStoragePlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources"
        ),
        .testTarget(
            name: "SecureStoragePluginTests",
            dependencies: ["SecureStoragePlugin"],
            path: "ios/Tests"
        )
    ]
)
