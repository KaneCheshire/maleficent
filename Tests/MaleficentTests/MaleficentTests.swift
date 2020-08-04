import XCTest
@testable import Maleficent

final class MaleficentTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Maleficent().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
