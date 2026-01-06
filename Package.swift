// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AparajitaCapacitorSecureStorage",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AparajitaCapacitorSecureStorage",
            targets: ["AparajitaCapacitorSecureStorage"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "8.0.0")
    ],
    targets: [
        .target(
            name: "AparajitaCapacitorSecureStorage",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/SecureStoragePlugin"
        ),
        .testTarget(
            name: "AparajitaCapacitorSecureStorageTests",
            dependencies: ["AparajitaCapacitorSecureStorage"],
            path: "ios/Tests/SecureStorageTests"
        )
    ]
)
