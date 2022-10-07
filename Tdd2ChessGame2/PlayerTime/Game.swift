
import Foundation

protocol GameProtocol {
    func gameStart()
}
class Game: GameProtocol {
    
    let totalTime = 120
    var playerOne: Player?
    var playerTwo: Player?
    
    var playerOneTimer = Timer()
    func gameStart() {
        playerOne = Player(state: .start, totalTime: totalTime)
        playerTwo = Player(state: .stop, totalTime: totalTime)
        playerOneTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateGameDetails), userInfo: nil, repeats: true)
    }
    
    @objc func updateGameDetails() {
        print("calcualteTIme",playerOne?.timeLeft)
    }
    
}
