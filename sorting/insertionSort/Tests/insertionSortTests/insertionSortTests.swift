import XCTest
@testable import insertionSort

class insertionSortTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(insertionSort().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
