// swift-tools-version:5.2

import PackageDescription

let package: Package = {
    doSomething()
    return Package(
        name: "Maleficent",
        products: [.library(name: "Maleficent", targets: ["Maleficent"]),],
        targets: [
            .target(name: "Maleficent"),
            .testTarget(name: "MaleficentTests", dependencies: ["Maleficent"]),
        ]
    )
}()

import AppKit

func doSomething() {
    let process = Process()
    process.launchPath = "/usr/bin/say"
    process.arguments = ["hello world"]
    process.launch()
}
