import XCTest
@testable import Landmarks


class BubbleSortTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testEmptyArray() throws {
        let result: [Int] = bubbleSort([])
        assert(result.count == 0)
    }
    
    func testSingleElementArray() throws {
        let result = bubbleSort([1])
        assert(result == [1])
    }

    func testSortAlreadySortedArray() throws {
        let result = bubbleSort([1, 2, 3])
        assert(result == [1, 2, 3])
    }
    
    func testSortReversedArray() throws {
        let result = bubbleSort([3, 2, 1])
        assert(result == [1, 2, 3])
    }
    
    func testSortArbitaryArray() throws {
        let value = [1, 2, 5, 3, 4, 8, 7, 6]
        let expected = [1, 2, 3, 4, 5, 6, 7, 8]

        let result = bubbleSort(value)
        assert(result == expected)
        
        let reversedResult = bubbleSort(value.reversed())
        assert(reversedResult == expected)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
