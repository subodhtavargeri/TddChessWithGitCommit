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
    
    let sut = PlayerTimerViewController()
    let presenter = PlayerTimerPresenterSpy()
    
    override func setUp(){
        _ = sut.view
        sut.setup(presenter: presenter)
    }
    
    func testViewTitle() {
        sut.setTitle(title: "Player Timer")
        
        let expecation = "Player Timer"
        XCTAssertEqual(sut.title, expecation)
    }
    
    
    func testPlayerOneTimerIsVisible() {
        sut.setPlayerOneTimer(time: "2")
        
        let expecation = "2"
        XCTAssertEqual(sut.labelPlayerOneTimer.text, expecation)
        
    }
}
