// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "HyperioniOS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "HyperionCore", targets: ["HyperionCore"]),
        .library(name: "HyperionAttributesInspector", targets: ["HyperionCore"]),
        .library(name: "HyperionMeasurements", targets: ["HyperionCore"]),
        .library(name: "HyperionSlowAnimations", targets: ["HyperionCore"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "HyperionCore",
            path: "Frameworks/HyperionCore.xcframework"
        )
    ]
)
