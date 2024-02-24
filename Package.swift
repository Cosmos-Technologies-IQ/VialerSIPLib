// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VialerSIPLib",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "VialerSIPLib",
            targets: ["VialerSIPLib"]),
    ],
    dependencies: [
//        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", from: "3.8.0"),
//        .package(path: "/VialerPJSIP.xcframework")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from
        .binaryTarget(name: "VialerPJSIP", path: "VialerPJSIP.xcframework"),
        .target(name: "VialerSIPLib", path: "Pod", publicHeadersPath: "")
    ]
)
