import XCTest
@testable import bubbleSort
import FileUtils
class bubbleSortTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(bubbleSort().bubbleSort(array:[3,1,2]), [1, 2, 3])
        XCTAssertEqual(bubbleSort().bubbleSort(array: [18,22,23,20,-20,2,3,14]), [-20, 2, 3, 14, 18, 20, 22, 23])
    }

    override func tearDown() {
        

        let content = File.read(atPath: "/project/target/bubbleSort/Sources/bubbleSort.swift")
        print(content)
        /*if exists != nil {
            if let path = Bundle.main.path(forResource: "bubbleSort", ofType: "swift") {
            do {
                let data = try String(contentsOfFile: path, encoding: .utf8)
                let myStrings = data.components(separatedBy: .newlines)
                print(myStrings.joined(separator: ", "))
            } catch {
                print(error)
            }
}

        }
        */
        print("TECHIO> message --channel yo")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
