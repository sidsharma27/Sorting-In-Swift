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
    /*
    override func tearDown() {
        if Path.exists("/project/target/bubbleSort/Sources/bubbleSort.swift") {
            do {
                if testRun!.failureCount > 0 {
                    print("TECHIO> message --channel Oops! Try Again 🐞");
                }
                else {
                    let content = try File.read(atPath: "/project/target/bubbleSort/Sources/bubbleSort.swift")
                    let noWhiteSpace = content.replacingOccurrences(of: " ", with: "")

                    if noWhiteSpace.range(of:"for_in0...arr.count") != nil && noWhiteSpace.range(of:"forvaluein1...arr.count-1")  != nil { 
                        print("TECHIO> message --channel Sucess! 🎊 Bubble Sort Verified 🎊");
                    }
                    else {
                        print("TECHIO> message --channel Hmmm Are you using Bubble Sort?");
                    }
                }
            } catch {
                print(error)
            }
        }
    }
    */
    static var allTests = [
        ("testExample", testExample),
    ]
}
