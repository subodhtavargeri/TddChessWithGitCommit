
import Foundation

protocol GameProtocol {
    func gameStart(gameTime: Int)
}
class Game: GameProtocol {
    
    var playerOne: Player?
    var playerTwo: Player?
    
    var playerOneTimer = Timer()
    func gameStart(gameTime: Int) {
        playerOne = Player(state: .start, totalTime: gameTime)
        playerTwo = Player(state: .stop, totalTime: gameTime)
        playerOneTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateGameDetails), userInfo: nil, repeats: true)
    }
    
    @objc func updateGameDetails() {
        print("calcualteTIme",playerOne?.timeLeft)
    }
    
}
