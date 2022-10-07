
import Foundation

protocol PlayerTimerPresenterProtocol:AnyObject {
    func loadPresenter()
    func startGame()
    func displayPlayerOneTimer(playerOneTimer: Int)
    func displayPlayerTwoTimer(playerTwoTimer: Int)
    func stopPlayerOne()
}
class PlayerTimerPresenter: PlayerTimerPresenterProtocol {
    
    weak var controller: PlayerTimerViewProtocol?
    let game: GameProtocol?
    
    init(controller: PlayerTimerViewProtocol,
         game: GameProtocol) {
        self.controller = controller
        self.game = game
    }
    
    func loadPresenter() {
        setViewTitle()
    }
    
    private func setViewTitle() {
        self.controller?.setTitle(title: "Player Timer")
    }
    
    func startGame() {
        game?.gameStart(gameTime: 120)
    }
    
    func displayPlayerOneTimer(playerOneTimer: Int) {
        controller?.setPlayerOneTimer(time: "\(playerOneTimer)")
    }
    
    func displayPlayerTwoTimer(playerTwoTimer: Int) {
        controller?.setPlayerTwoTimer(time: "\(playerTwoTimer)")
    }
    
    func stopPlayerOne() {
        game?.stopPlayerOne()
    }
    
}
