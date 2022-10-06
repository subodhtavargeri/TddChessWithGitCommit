//
//  GameTimerPresenterSpy.swift
//  Tdd2ChessGame2Tests
//
//  Created by Subodh Tavargeri on 06/10/22.
//

import Foundation
@testable import Tdd2ChessGame2

class GameTimerPresenterSpy: GameTimerPresenterProtocol {
    
    var invokedSetTitle = false
    var invokedSetTitleCount = 0
    
    func setTitle() {
        invokedSetTitle = true
        invokedSetTitleCount += 1
    }
    
    var invokedValidateTime = false
    var invokedValidateTimeCount = 0
    var invokedValidateTimeParameters: (time: String, Void)?
    var invokedValidateTimeParametersList = [(time: String, Void)]()
    
    func validateTime(time: String) {
        invokedValidateTime = true
        invokedValidateTimeCount += 1
        invokedValidateTimeParameters = (time, ())
        invokedValidateTimeParametersList.append((time, ()))
    }
}
