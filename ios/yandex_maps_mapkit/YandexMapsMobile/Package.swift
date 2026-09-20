// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "YandexMapsMobile",
    defaultLocalization: "en",
    platforms: [.iOS("15.0")],
    products: [
        .library(
            name: "YandexMapsMobile",
            type: .static,
            targets: [
                "YandexMapsMobile",
                "YandexMapsMobileResources"
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "YandexMapsMobile",
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.45.0-full-flutter.framework.zip",
            checksum: "09eecf7d0b6e09b4d5f345ef938906ad08b7aeebf0ac7e1af0337dd3bb3f1024"
        ),
        .target(
            name: "YandexMapsMobileResources",
            path: "Resources",
            resources: [.process("Contents")],
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
            ]

        )
    ]
)
