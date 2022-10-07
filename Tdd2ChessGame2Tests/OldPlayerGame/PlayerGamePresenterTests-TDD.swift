//
//  PlayerGamePresenter.swift
//  Tdd2ChessGame2Tests
//
//  Created by Subodh Tavargeri on 05/10/22.
//

import XCTest
@testable import Tdd2ChessGame2

class PlayerGamePresenterTestsTdd: XCTestCase {
    
    //assume i have time in sec
    let gameTime = 60
    
    func testGameStart() {
        
        //Arrange
        let playerOne = Player(state: .start, remainingTime: gameTime)
        let playerTwo = Player(state: .stop, remainingTime: gameTime)
        
        
        let expectationPlayerOne = PlayerState.start
        let expectationPlayerTwo = PlayerState.stop
        
        //Assert
        XCTAssertEqual(playerOne.state, expectationPlayerOne)
        XCTAssertEqual(playerTwo.state, expectationPlayerTwo)
    }
    
    func testStartPlayerOne() {
        
    }
    
    func testStartPlayerTwo() {
        
    }
    
    func testStopPlayerOne() {
        
    }
    
    func testStopPlayerTwo() {
        
    }
}
