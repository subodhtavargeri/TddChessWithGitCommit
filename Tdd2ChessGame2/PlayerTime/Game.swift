
import Foundation

protocol GameProtocol {
    func gameStart(gameTime: Int)
    func updateGameDetails()
}
class Game: GameProtocol {
    
    var playerOne: Player?
    var playerTwo: Player?
    var playerOneTimer: Timer?
    
    weak var presenter: PlayerTimerPresenterProtocol?
    
    func setup(presenter: PlayerTimerPresenterProtocol) {
        self.presenter = presenter
    }
    
    func gameStart(gameTime: Int) {
        playerOne = Player(state: .start, totalTime: gameTime)
        playerTwo = Player(state: .stop, totalTime: gameTime)
        
        guard playerOneTimer == nil else { return }
        playerOneTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateGameDetails), userInfo: nil, repeats: true)
    }
    
    @objc func updateGameDetails() {
        presenter?.getPlayerOneTime(playerOneTime: playerOne?.timeLeft ?? 0)
    }
    
}
