// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Maleficent",
    products: [.library(name: "Maleficent", targets: ["Maleficent"]),],
    targets: [
        .target(name: "Maleficent"),
        .testTarget(name: "MaleficentTests", dependencies: ["Maleficent"]),
    ]
)
