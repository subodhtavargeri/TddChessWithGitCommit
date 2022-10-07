
import Foundation
@testable import Tdd2ChessGame2

class PlayerTimerViewControllerSpy: PlayerTimerViewProtocol {
    var title: String?
    func setTitle(title: String) {
        self.title = title
    }
    
}
