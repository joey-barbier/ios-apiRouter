// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OrkaApiRouter",
    platforms: [
        .macOS(.v11), .iOS(.v13), .tvOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "OrkaApiRouter",
            targets: ["OrkaApiRouter"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.6.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "OrkaApiRouter",
            dependencies: ["Alamofire"]),
//        .testTarget(
//            name: "OrkaPreviewDataTests",
//            dependencies: [
//                "OrkaPreviewData"
//            ]),
    ]
)
