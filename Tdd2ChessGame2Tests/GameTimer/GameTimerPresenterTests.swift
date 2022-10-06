
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
}

