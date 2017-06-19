import XCTest
@testable import mergeSort

class mergeSortTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(mergeSort().mergeSort([3,1,2]), [1, 2, 3])
        XCTAssertEqual(mergeSort().mergeSort([18,22,23,20,-20,2,3,14]), [-20, 2, 3, 14, 18, 20, 22, 23])
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
