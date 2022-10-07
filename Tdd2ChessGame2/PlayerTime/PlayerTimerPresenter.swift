
import Foundation

protocol PlayerTimerPresenterProtocol {
    
}
class PlayerTimerPresenter: PlayerTimerPresenterProtocol {
    
    let controller: PlayerTimerViewProtocol?
    let game: GameProtocol?
    
    init(controller: PlayerTimerViewProtocol,
         game: GameProtocol) {
        self.controller = controller
        self.game = game
    }
}
