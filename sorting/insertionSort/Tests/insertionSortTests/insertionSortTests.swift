import XCTest
@testable import insertionSort

class insertionSortTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(insertionSort().insertionSort(array:[3,1,2]), [1, 2, 3])
        XCTAssertEqual(insertionSort().insertionSort(array: [18,22,23,20,-20,2,3,14]), [-20, 2, 3, 14, 18, 20, 22, 23])
    }



    static var allTests = [
        ("testExample", testExample),
    ]
}

