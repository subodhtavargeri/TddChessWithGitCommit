//
//  PlayerTimerView.swift
//  Tdd2ChessGame2Tests
//
//  Created by Subodh Tavargeri on 07/10/22.
//

import Foundation
@testable import Tdd2ChessGame2
import XCTest

class PlayerTimerViewControllerTests: XCTestCase {
    
    func testViewTitle() {
        let sut = GameTimerViewController()
        sut.setViewTitle(title: "Player Timer")
        
        let expecation = "Player Timer"
        XCTAssertEqual(sut.title, expecation)
    }
}
