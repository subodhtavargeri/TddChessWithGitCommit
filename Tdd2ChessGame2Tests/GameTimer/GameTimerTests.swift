//
//  GameTimerRouterTests.swift
//  Tdd2ChessGame2Tests
//
//  Created by Subodh Tavargeri on 06/10/22.
//

import Foundation
import XCTest
@testable import Tdd2ChessGame2

class GameTimerTests: XCTestCase {
    
    func testValideTimeWithValidTimer() {
        let gameTimer = GameTimer()
        
        let valid = gameTimer.validateTime(time: "2")
        
        XCTAssertTrue(valid)
    }
    
    func testValideTimeWithInValidTimerWithAlphabet() {
        let gameTimer = GameTimer()
        
        let valid = gameTimer.validateTime(time: "XYZ")
        
        XCTAssertFalse(valid)
    }
    
    func testValideTimeWithInValidTimerWithDoubleValue() {
        let gameTimer = GameTimer()
        
        let valid = gameTimer.validateTime(time: "2.2")
        
        XCTAssertFalse(valid)
    }
    
}
