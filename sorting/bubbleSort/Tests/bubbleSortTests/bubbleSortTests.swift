import XCTest
@testable import bubbleSort
import FileUtils
class bubbleSortTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(bubbleSort().bubbleSort([3,1,2]), [1, 2, 3])
        XCTAssertEqual(bubbleSort().bubbleSort([18,22,23,20,-20,2,3,14]), [-20, 2, 3, 14, 18, 20, 22, 23])
    }

    override func tearDown() {
        if Path.exists("/project/target/bubbleSort/Sources/bubbleSort.swift") {
            do {
                let content = try File.read(atPath: "/project/target/bubbleSort/Sources/bubbleSort.swift") as! String
                print(content)
            } catch {
                print(error)
            }
        }
        
        print("TECHIO> message --channel yo")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
