// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.01.0"
let checksum = "119636343c639984c5214142affee0bc93542de81c628880912a73254ef3d859"
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
