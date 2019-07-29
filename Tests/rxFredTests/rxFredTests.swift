import XCTest
@testable import rxFred

final class rxFredTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(rxFred().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
