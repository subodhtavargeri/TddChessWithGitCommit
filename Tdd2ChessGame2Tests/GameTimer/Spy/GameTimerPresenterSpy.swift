//
//  GameTimerPresenterSpy.swift
//  Tdd2ChessGame2Tests
//
//  Created by Subodh Tavargeri on 06/10/22.
//

import Foundation
@testable import Tdd2ChessGame2

class GameTimerPresenterSpy : GameTimerPresenterProtocol {
    
    var invokedLoad = false
    var invokedLoadCount = 0
    var validateTimeCalled = false
    
    func validateTime(time: String) {
        validateTimeCalled = true
    }
    
    func load() {
        invokedLoad = true
        invokedLoadCount += 1
    }
    
}
