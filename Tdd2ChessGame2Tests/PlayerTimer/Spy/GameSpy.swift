
import Foundation
@testable import Tdd2ChessGame2

class GameSpy: GameProtocol {
    var gameTime: Int?
    
    func updateGameDetails() {
        
    }
    
    func gameStart(gameTime: Int) {
        self.gameTime = gameTime
    }
    
}
