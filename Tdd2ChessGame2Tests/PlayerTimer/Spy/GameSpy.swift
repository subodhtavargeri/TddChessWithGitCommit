
import Foundation
@testable import Tdd2ChessGame2

class GameSpy: GameProtocol {
    
    func stopPlayerOne() {
        
    }
    
    var gameTime: Int?
    
    func updatePlayerOneTimer() {
        
    }
    
    func gameStart(gameTime: Int) {
        self.gameTime = gameTime
    }
    
}
