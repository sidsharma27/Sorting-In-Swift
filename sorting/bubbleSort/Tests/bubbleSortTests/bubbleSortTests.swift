import XCTest
@testable import bubbleSort

class bubbleSortTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(bubbleSort().bubbleSort(array:[3,1,2]), [1, 2, 3])
        XCTAssertEqual(bubbleSort().bubbleSort(array: [18,22,23,20,-20,2,3,14]), [-20, 2, 3, 14, 18, 20, 22, 23])
    }


    public static var test = [
        ("testExample", testExample),
    ]
}
