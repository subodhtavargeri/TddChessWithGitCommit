//
//  GameTimerTests.swift
//  Tdd2ChessGame2Tests
//
//  Created by Subodh Tavargeri on 06/10/22.
//

import Foundation
@testable import Tdd2ChessGame2
class GameTimertSpy: GameTimerProtocol {
    
    func validateTime(time: String) -> Bool {
        let intTime = Int(time) ?? 0
        if intTime != 0 {
            return true
        }
        return false
        
    }
}
