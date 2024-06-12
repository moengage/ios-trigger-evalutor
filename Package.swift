// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.01.1"
let checksum = "a1a03784a099209e87aaf85f9ef04f664abab1eef3e055a0503402f1cb976021"
let package = Package(
    name: "MoEngageTriggerEvaluator",
    platforms: [.iOS(.v11), .tvOS(.v11)],
    products: [
        .library(
            name: "MoEngageTriggerEvaluator",
            targets: ["MoEngageTriggerEvaluatorSPM","MoEngageTriggerEvaluator"]),
    ],
    dependencies: [
        .package(url: "https://github.com/moengage/MoEngage-iOS-SDK.git", "9.17.0"..<"9.18.0"),
    ],
    targets: [
        .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: ["MoEngage-iOS-SDK"], path: "Sources/..",exclude: ["MoEngageTriggerEvaluator.podspec", "README.md", "LICENSE","CHANGELOG.md","Images/moe_logo_blue.png"]),
        .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/ios-trigger-evalutor/releases/download/\(version)/MoEngageTriggerEvaluator.xcframework.zip", checksum: checksum)
    ],
    swiftLanguageVersions: [.v5]
)
