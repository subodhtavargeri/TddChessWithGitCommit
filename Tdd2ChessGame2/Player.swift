//
//  Player.swift
//  Tdd2ChessGame2
//
//  Created by Subodh Tavargeri on 05/10/22.
//

import Foundation

enum PlayerState {
    case start, stop, pause
}
struct Player {
    var state: PlayerState
    var totalTime: Int
    var isCurrentPlayer: Bool
    var timeLeft: Int {
        mutating get {
            totalTime -= 1
            return totalTime
        }
    }
}
