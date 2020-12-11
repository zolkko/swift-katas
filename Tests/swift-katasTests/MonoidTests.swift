import XCTest


class MonoidTests: XCTestCase {

    func testEmptyArray() throws {
        let result = "hello" <> "world"
        assert(result == "helloworld")
    }

}
