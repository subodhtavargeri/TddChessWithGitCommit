
import Foundation
@testable import Tdd2ChessGame2
import XCTest

class PlayerGamePresenterTests: XCTestCase {
    
    func testLoadPresenter() {
        let view = GameTimerViewControllerSpy()
        let gameTimer = GameTimertSpy()
        let router = GameTimerRouterSpy()
        let sut = GameTimerPresenter(view: view, gameTimer: gameTimer, router: router)
    }
}

