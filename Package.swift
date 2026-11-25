// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "LevelPlayInMobiCustomAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "LevelPlayInMobiCustomAdapter",
            targets: ["LevelPlayInMobiCustomAdapterTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/InMobi/InMobiSDK-Swift-Package.git",
            from: "11.5.0"
        ),
        .package(
            url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package.git",
            from: "9.0.0"
        )
    ],
    targets: [
        // Binary targets cannot declare dependencies. This wrapper connects
        // the adapter to the InMobi and LevelPlay SDK products.
        .target(
            name: "LevelPlayInMobiCustomAdapterTarget",
            dependencies: [
                .target(name: "ISInMobiCustomAdapterFramework"),
                .product(name: "InMobiSDK", package: "InMobiSDK-Swift-Package"),
                .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package")
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "ISInMobiCustomAdapterFramework",
            url: "https://dl.inmobi.com/SDK/Adapters/ISInMobiCustomAdapter-SPM-11.5.0.0.zip",
            checksum: "45ed39eb6c62ddc0d0755d06781ee6385da87d1938e321eb494e02766346044c"
        )
    ]
)
