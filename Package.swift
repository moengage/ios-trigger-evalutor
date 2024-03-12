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
        .package(name: "MoEngage-iOS-SDK",url: "https://github.com/moengage/MoEngage-iOS-SDK.git", from: "9.16.0"),
    ],
    targets: [
        .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: ["MoEngage-iOS-SDK"], path: "Sources/..",exclude: ["MoEngageTriggerEvaluator.podspec", "README.md","./Frameworks/MoEngageTriggerEvaluator.xcframework", "LICENSE","CHANGELOG.md","Images/moe_logo_blue.png"]),
        .binaryTarget(name: "MoEngageTriggerEvaluator",path: "./Frameworks/MoEngageTriggerEvaluator.xcframework")
    ]
)
