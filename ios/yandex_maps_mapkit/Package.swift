// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "yandex_maps_mapkit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "yandex-maps-mapkit",
            targets: ["yandex_maps_mapkit"]
        ),
    ],
    dependencies: [
        .package(path: "YandexMapsMobile"),
    ],
    targets: [
        .target(
            name: "yandex_maps_mapkit",
            dependencies: [
                .product(name: "YandexMapsMobile", package: "YandexMapsMobile"),
            ],
            linkerSettings: [
                .linkedFramework("CoreFoundation"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("UIKit"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Security"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("DeviceCheck"),
                .linkedFramework("NetworkExtension"),
                .linkedLibrary("resolv"),
                .linkedLibrary("c++"),
                .unsafeFlags(["-ObjC", "-all_load"]),
            ]
        ),
    ]
)