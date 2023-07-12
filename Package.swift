// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleProtobuf",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GoogleProtobuf",
            targets: ["GoogleProtobuf"]),
    ],
    targets: [
        .target(
            name: "GoogleProtobuf",
            path: "objectivec",
            exclude: [
                "GPBProtocolBuffers.m",
                "Tests",
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("objectivec")
            ]),
//        .testTarget(
//            name: "GoogleProtobufTests",
//            dependencies: ["GoogleProtobuf"],
//            path: "objectivec/Tests",
//            exclude: [
//                "golden_message",
//                "golden_packed_fields_message",
//                "GPBDictionaryTests.pddm"])
    ]
)
