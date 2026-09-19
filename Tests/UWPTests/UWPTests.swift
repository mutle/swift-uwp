import XCTest
import UWP

final class UWPTests: XCTestCase {
    func testModuleImports() {
        XCTAssertTrue(true)
    }

#if os(Windows)
    func testGeneratedWindowsAPICompiles() {
        let color = Color(a: 255, r: 1, g: 2, b: 3)
        XCTAssertEqual(color.a, 255)
        XCTAssertEqual(color.r, 1)
        XCTAssertEqual(color.g, 2)
        XCTAssertEqual(color.b, 3)
    }
#endif
}
