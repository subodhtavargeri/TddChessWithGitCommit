
import Foundation

protocol PlayerTimerPresenterProtocol {
    func loadPresenter()
    func startGame()
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
        game?.gameStart()
    }
    
}
