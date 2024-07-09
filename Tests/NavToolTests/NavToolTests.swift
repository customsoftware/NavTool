import XCTest
@testable import NavTool

final class NavToolTests: XCTestCase {
    
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest
        let nameVal = NavTool.shared.appName
        XCTAssertTrue(nameVal == "NavTool", "It should be 'NavTool', but is '\(nameVal)'")
        
        let toolVersion = NavTool.shared.version
        XCTAssertTrue(toolVersion == "0.1.1", "Version should be '0.1.1', but is '\(toolVersion)'")
        
        
        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }
    
    func testLiveCases() throws {
        // Test CAse
        var currentHeading: Double = 178
        var desiredHeading: Double = 326
        var turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Right")
        
        currentHeading = 338
        desiredHeading = 326
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Left")
    }
    
    func testTurnRightDetector() throws {
        // NW to NW
        var currentHeading: Double = 330
        var desiredHeading: Double = 355
        var turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Right")
        
        // NW to NE
        currentHeading = 355
        desiredHeading = 80
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Right")
        
        // NE to NE
        currentHeading = 10
        desiredHeading = 40
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Right")
        
        // NE to SE
        currentHeading = 10
        desiredHeading = 110
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Right")
        
        // SE to SE
        currentHeading = 110
        desiredHeading = 140
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Right")
        
        // SE to SW
        currentHeading = 110
        desiredHeading = 190
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Right")
  
        // SW to SW
        currentHeading = 190
        desiredHeading = 240
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Right")
        
        // SW to NW
        currentHeading = 240
        desiredHeading = 300
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Right")
 }
    
    func testBigTurnRightDetector() throws {
        // NW to NE
        var currentHeading: Double = 275
        var desiredHeading: Double = 90
        var turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Right")
        
        // NE to SE
        currentHeading = 5
        desiredHeading = 180
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Right")
        
        // SE to SW
        currentHeading = 95
        desiredHeading = 265
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Right")
  
        // SW to NW
        currentHeading = 190
        desiredHeading = 360
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Right")
 }
    
    func testTurnLeftDetector() throws {
        // NW to NW
        var currentHeading: Double = 355
        var desiredHeading: Double = 335
        var turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Left")
        
        // NE to NW
        currentHeading = 50
        desiredHeading = 350
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Left")
        
        // NE to NE
        currentHeading = 40
        desiredHeading = 10
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Left")
        
        // SE to NE
        currentHeading = 110
        desiredHeading = 10
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Left")
        
        // SE to SE
        currentHeading = 140
        desiredHeading = 110
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Left")
        
        // SW to SE
        currentHeading = 190
        desiredHeading = 110
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Left")
  
        // SW to SW
        currentHeading = 240
        desiredHeading = 190
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Left")
        
        // NW to SW
        currentHeading = 300
        desiredHeading = 240
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Left")    }
    
    func testBigTurnLeftDetector() throws {
        // NW to SW
        var currentHeading: Double = 355
        var desiredHeading: Double = 195
        var turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Left")
        
        // NE to NW
        currentHeading = 80
        desiredHeading = 280
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Left")
        
        // SE to NE
        currentHeading = 178
        desiredHeading = 10
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Left")
        
        // SW to SE
        currentHeading = 260
        desiredHeading = 90
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Left")
        
        // NW to SW
        currentHeading = 350
        desiredHeading = 185
        turn = NavTool.shared.getDirectionOfTurn(from: currentHeading, to: desiredHeading)
        XCTAssertTrue( turn.textOfTurn == "Left")
    }
}
