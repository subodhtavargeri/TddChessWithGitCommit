//
//  GameTimerViewControllerTests.swift
//  Tdd2ChessGame2Tests
//
//  Created by Subodh Tavargeri on 06/10/22.
//

import Foundation
@testable import Tdd2ChessGame2
import XCTest

class GameTimerViewControllerTests : XCTestCase {
    
    let sut = GameTimerViewController()
    let presenter = GameTimerPresenterSpy()
    
    override func setUp() {
        _ = sut.view
        sut.setup(presenter: presenter)
    }
    
    func testViewTitle() {
        sut.setViewTitle(title: "title")
        
        let expectation = "title"
        XCTAssertEqual(sut.title,expectation)
    }
    
    func testErrorMessageisHidden() {
        sut.hideErrorMessage()
        
        XCTAssertTrue(sut.labelErrorMessage.isHidden)
    }
    
    func testErrorMessageisVisible() {
        sut.showErrorMessage(message: "Invalid Time")
        
        let expectataion = "Invalid Time"
        XCTAssertEqual(sut.labelErrorMessage.text, expectataion)
    }
    
    func testTextFieldDidEndEnding() {
        sut.textFieldGameTimer.text = "2"
        
        sut.textFieldDidEndEditing(sut.textFieldGameTimer)
        
        XCTAssertTrue(presenter.validateTimeCalled)
    }
    
    func testButtonDonePressed() {
        sut.buttonDonePressed((Any).self)
        
        XCTAssertTrue(presenter.validateTimeCalled)
    }
}
