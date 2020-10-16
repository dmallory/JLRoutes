// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let headersSearchPath: [CSetting] = [.headerSearchPath("."),
                                     .headerSearchPath("Classes")]

let package = Package(
    name: "JLRoutes",
    platforms: [
             .iOS(.v9),
         ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "JLRoutes",
            type: .static,
            targets: ["JLRoutes"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "JLRoutes",
            dependencies: [],
            path: "JLRoutes",
            exclude: ["Info.plist"],
            publicHeadersPath: "include",
            cSettings: headersSearchPath
        ),
    ],
    cLanguageStandard: .gnu99,
    cxxLanguageStandard: .cxx11
)
