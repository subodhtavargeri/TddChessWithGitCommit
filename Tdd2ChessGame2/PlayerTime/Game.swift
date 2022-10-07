
import Foundation

protocol GameProtocol {
    func gameStart(gameTime: Int)
    func updatePlayerOneTimer()
    func stopPlayerOne()
    func stopPlayerTwo()
    func getCurrentPlayer() -> CurrentPlayer
    func startPlayerTwo()
    func playerOneResume()
    func playerTwoResume()
    
}
class Game: GameProtocol {
    
    var playerOne: Player?
    var playerTwo: Player?
    var playerOneTimer: Timer?
    var playerTwoTimer: Timer?
    var currentPlayer: CurrentPlayer?
    
    weak var presenter: PlayerTimerPresenterProtocol?
    
    func setup(presenter: PlayerTimerPresenterProtocol) {
        self.presenter = presenter
    }
    
    func gameStart(gameTime: Int) {
        playerOne = Player(state: .start, totalTime: gameTime, isCurrentPlayer: true)
        playerTwo = Player(state: .stop, totalTime: gameTime, isCurrentPlayer: false)
        
        guard playerOneTimer == nil else { return }
        playerOneTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updatePlayerOneTimer), userInfo: nil, repeats: true)
        currentPlayer = .playerOne
    }
    
    func playerOneResume() {
        playerOneTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updatePlayerOneTimer), userInfo: nil, repeats: true)
        currentPlayer = .playerOne
    }
    
    func playerTwoResume() {
        playerTwoTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updatePlayerTwoTimer), userInfo: nil, repeats: true)
        currentPlayer = .playerTwo
    }
    
    
    @objc func updatePlayerOneTimer() {
        if let timer = playerOne?.timeLeft, timer >= 0 {
            presenter?.displayPlayerOneTimer(playerOneTimer: timer)
            return
        }
        stopPlayerOne()
        stopPlayerTwo()
    }
    
    @objc func updatePlayerTwoTimer() {
        if let timer = playerTwo?.timeLeft, timer >= 0 {
            presenter?.displayPlayerTwoTimer(playerTwoTimer: timer)
            return
        }
        stopPlayerOne()
        stopPlayerTwo()
    }
    
    func stopPlayerOne() {
        playerOneTimer?.invalidate()
        playerOneTimer = nil
        playerOne?.state = .stop
        playerOne?.isCurrentPlayer = false
        playerTwo?.isCurrentPlayer = true
        currentPlayer = .playerTwo
    }
    
    func stopPlayerTwo() {
        playerTwoTimer?.invalidate()
        playerTwoTimer = nil
        playerTwo?.state = .stop
        playerOne?.isCurrentPlayer = true
        playerTwo?.isCurrentPlayer = false
        currentPlayer = .playerOne
    }
    
    func startPlayerTwo() {
        playerTwoTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updatePlayerTwoTimer), userInfo: nil, repeats: true)
    }
    
    func getCurrentPlayer() -> CurrentPlayer {
        return currentPlayer ?? .playerOne
    }
}
