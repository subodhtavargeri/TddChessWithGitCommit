
import Foundation

protocol PlayerTimerPresenterProtocol:AnyObject {
    func loadPresenter()
    func startGame()
    func getPlayerOneTime(playerOneTime: Int)
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
    
    func getPlayerOneTime(playerOneTime: Int) {
        controller?.setPlayerOneTimer(time: "\(playerOneTime)")
    }
    
    func stopPlayerOne() {
        game?.stopPlayerOne()
    }
    
}
