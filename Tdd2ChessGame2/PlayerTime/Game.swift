
import Foundation

protocol GameProtocol {
    func gameStart(gameTime: Int)
    func updatePlayerOneTimer()
    func stopPlayerOne()
}
class Game: GameProtocol {
    
    var playerOne: Player?
    var playerTwo: Player?
    var playerOneTimer: Timer?
    var playerTwoTimer: Timer?
    
    weak var presenter: PlayerTimerPresenterProtocol?
    
    func setup(presenter: PlayerTimerPresenterProtocol) {
        self.presenter = presenter
    }
    
    func gameStart(gameTime: Int) {
        playerOne = Player(state: .start, totalTime: gameTime, isCurrentPlayer: true)
        playerTwo = Player(state: .stop, totalTime: gameTime, isCurrentPlayer: false)
        
        guard playerOneTimer == nil else { return }
        playerOneTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updatePlayerOneTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updatePlayerOneTimer() {
        presenter?.displayPlayerOneTimer(playerOneTimer: playerOne?.timeLeft ?? 0)
    }
    
    func stopPlayerOne() {
        playerOneTimer?.invalidate()
        playerOneTimer = nil
        playerOne?.state = .stop
        playerOne?.isCurrentPlayer = false
        playerTwo?.isCurrentPlayer = true
    }
    
}
