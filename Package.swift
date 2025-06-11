// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "uk-railway-stations",
    products: [
        .library(
            name: "uk-railway-stations",
            targets: ["uk-railway-stations"]),
    ],
    targets: [
        .target(
            name: "uk-railway-stations", path: "./", resources: [.copy("./stations.json"), .copy("./stations.csv")],),
    ]
)
