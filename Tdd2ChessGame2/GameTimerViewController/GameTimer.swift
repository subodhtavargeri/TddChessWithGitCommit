//
//  GameTimerInteractorProtocol.swift
//  Tdd2ChessGame2
//
//  Created by Subodh Tavargeri on 05/10/22.
//

import Foundation

protocol GameTimerProtocol {
    func validateTime(time: String) -> Bool
}

class GameTimer: GameTimerProtocol {
    
    func validateTime(time: String) -> Bool {
        let valid = Int(time) ?? 0
        if valid != 0 {
            return true
        }
        return false
    }
}
