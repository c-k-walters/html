import XCTest
@testable import swift_htmlUI

final class swift_htmlUITests: XCTestCase {
    func testExample() throws {
        XCTAssertEqual("<p>Hello World!</p>", TEST(node: sample))
    }
}

let sample: some Inline = span {
	"test"
	"string"
}

func TEST<N: Node>(node: N) -> HTML {
	node._render()
}
