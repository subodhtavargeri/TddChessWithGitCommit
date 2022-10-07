
import Foundation
@testable import Tdd2ChessGame2

class GameSpy: GameProtocol {
    
    var gameTime: Int?
    func gameStart(gameTime: Int) {
        self.gameTime = gameTime
    }
    
}
