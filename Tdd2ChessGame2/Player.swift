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
    let state: PlayerState
    let remainingTime: Int
    var timeLeft: Int {
        get {
            return remainingTime - 1
        }
    }
}
