import XCTest
@testable import NavTool

final class NavToolTests: XCTestCase {
    
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest
        let nameVal = NavTool.shared.appName
        XCTAssertTrue(nameVal == "NavTool", "It should be 'NavTool', but is '\(nameVal)'")
        
        let toolVersion = NavTool.shared.version
        XCTAssertTrue(toolVersion == "0.1", "Version should be '0.1', but is '\(toolVersion)'")
        
        
        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }
}
