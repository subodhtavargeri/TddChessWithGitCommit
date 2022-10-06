//
//  String+ExtensionTests.swift
//  Tdd2ChessGame2Tests
//
//  Created by Subodh Tavargeri on 05/10/22.
//

import XCTest

@testable import Tdd2ChessGame2

class String_ExtensionTests: XCTestCase {
    
    //First check for int only
    func testCheckIfTimeEnteredisIntegerForOneDigit() {
        //Arrange
        let value = "2"
        
        //Act
        let result = value.isInt
        
        //Assert
        XCTAssertEqual(result, 2)
    }
    
    //First check for int only
    func testCheckIfTimeEnteredisIntegerForTwoDigit() {
        //Arrange
        let value = "99"
        
        //Act
        let result = value.isInt
        
        //Assert
        XCTAssertEqual(result, 99)
    }
    
    //First check for int only
    func testCheckIfTimeEnteredisIntegerForDecimal() {
        //Arrange
        let value = "2.9"
        
        //Act
        let result = value.isInt
        
        //Assert
        XCTAssertNil(result)
    }
    
    //First check for int only
    func testCheckIfTimeEnteredisIntegerForNegative() {
        //Arrange
        let value = "-99"
        
        //Act
        let result = value.isInt
        
        //Assert
        XCTAssertLessThan(result!, 0, "Negative as less than zero")
    }
    
}
