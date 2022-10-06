
import Foundation

protocol GameTimerProtocol {
    func validateTime(time: String) -> Bool
}

class GameTimer: GameTimerProtocol {
    
    func validateTime(time: String) -> Bool {
        let intTime = Int(time) ?? 0
        if intTime != 0 {
            return true
        }
        return false
    }
}
