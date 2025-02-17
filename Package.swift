// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxMediaPicker",
    url: "https://github.com/iruirc/RxMediaPicker.git"
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "RxMediaPicker",
            targets: ["RxMediaPicker"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.5.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "RxMediaPicker",
            dependencies: ["RxSwift"]),
        .testTarget(
            name: "RxMediaPickerTests",
            dependencies: ["RxMediaPicker"]),
    ]
)
