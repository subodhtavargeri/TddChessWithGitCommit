
import Foundation
@testable import Tdd2ChessGame2
import XCTest

class PlayerGamePresenterTests: XCTestCase {
    let view = GameTimerViewControllerSpy()
    let gameTimer = GameTimertSpy()
    let router = GameTimerRouterSpy()
    var sut:GameTimerPresenter?
    
    override func setUp() async throws {
        sut = GameTimerPresenter(view: view, gameTimer: gameTimer, router: router)
    }
    
    func testLoadPresenterSetViewTitle() {
        sut?.load()
        
        let expectationTitle = "Chess Timer"
        XCTAssertEqual(view.invokedSetViewTitleParametersList[0].title, expectationTitle)
    }
    
    func testValidWithValidTimeErrorMessgaeIsHidden() {
        sut?.validateTime(time: "2")
        
        XCTAssertTrue(view.invokedHideErrorMessage)
    }
    
    //HowTotest router part Todo Ask
    func testValidWithValidTimeRouterProtocolIsCalled() {
        sut?.validateTime(time: "2")
        
        // XCTAssertTrue(router.invokedRouteToPlayerTimer)
    }
    
    func testValidWithInValidTimeErrorMessgaeIsShown() {
        sut?.validateTime(time: "AXZ")
        
        XCTAssertFalse(view.invokedHideErrorMessage)
    }
    
    func testValidWithInValidTimeCheckErrorMessage() {
        sut?.validateTime(time: "AXZ")
        
        let expectation = "Please enter time in minutes"
        XCTAssertEqual(view.invokedShowErrorMessageParametersList[0].message, expectation)
    }
}

