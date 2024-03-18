// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MoEngageTriggerEvaluator",
    products: [
        .library(
            name: "MoEngageTriggerEvaluator",
            targets: ["MoEngageTriggerEvaluatorSPM","MoEngageTriggerEvaluator"]),
    ],
    dependencies: [
        .package(url: "https://github.com/moengage/MoEngage-iOS-SDK.git", "9.16.1"..<"9.17.0"),
    ],
    targets: [
        .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: ["MoEngage-iOS-SDK"], path: "Sources/..",exclude: ["MoEngageTriggerEvaluator.podspec", "README.md","./Frameworks/MoEngageTriggerEvaluator.xcframework", "LICENSE","CHANGELOG.md","Images/moe_logo_blue.png"]),
        .binaryTarget(name: "MoEngageTriggerEvaluator",path: "./Frameworks/MoEngageTriggerEvaluator.xcframework")
    ]
)
