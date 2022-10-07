
import XCTest
@testable import Tdd2ChessGame2

class PlayerTimerPresenterTests: XCTestCase {
    
    func testTitleSetForView() {
        let view = PlayerTimerViewControllerSpy()
        let game = GameSpy()
        let presenter = PlayerTimerPresenter(controller: view, game: game)
        presenter.loadPresenter()
        
        let expectation = "Player Timer"
        XCTAssertEqual(view.title, expectation)
    }
    
}
