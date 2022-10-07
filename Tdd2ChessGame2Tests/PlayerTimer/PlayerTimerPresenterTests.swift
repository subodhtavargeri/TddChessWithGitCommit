
import XCTest
@testable import Tdd2ChessGame2

class PlayerTimerPresenterTests: XCTestCase {
    
    let view = PlayerTimerViewControllerSpy()
    let game = GameSpy()
    var presenter: PlayerTimerPresenter?
    
    override func setUp() {
        presenter = PlayerTimerPresenter(controller: view, game: game)
    }
    
    func testTitleSetForView() {
        presenter?.loadPresenter()
        
        let expectation = "Player Timer"
        XCTAssertEqual(view.title, expectation)
    }
    
    func testStartGame() {
        presenter?.startGame()
        
        let expectedTime = 120
        XCTAssertEqual(game.gameTime, expectedTime)
    }
    
    func testDisplayPlayerOneTimer() {
        presenter?.displayPlayerOneTimer(playerOneTimer: 2)
        
        let expectedTime = 2
        XCTAssertEqual(2, expectedTime)
    }
    
}
