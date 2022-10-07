
import Foundation
@testable import Tdd2ChessGame2

class PlayerTimerViewControllerSpy: PlayerTimerViewProtocol {
    var title: String?
    var timer: String?
    
    func setPlayerTwoTimer(time: String) {
        timer = time
    }
    
    func setPlayerOneTimer(time: String) {
        timer = time
    }
    
    func setTitle(title: String) {
        self.title = title
    }
    
}
