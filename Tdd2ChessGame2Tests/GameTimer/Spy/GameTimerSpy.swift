//
//  GameTimerTests.swift
//  Tdd2ChessGame2Tests
//
//  Created by Subodh Tavargeri on 06/10/22.
//

import Foundation
@testable import Tdd2ChessGame2
class GameTimertSpy: GameTimerProtocol {

    var invokedValidateTime = false
    var invokedValidateTimeCount = 0
    var invokedValidateTimeParameters: (time: String, Void)?
    var invokedValidateTimeParametersList = [(time: String, Void)]()
    var stubbedValidateTimeResult: Bool! = false

    func validateTime(time: String) -> Bool {
        invokedValidateTime = true
        invokedValidateTimeCount += 1
        invokedValidateTimeParameters = (time, ())
        invokedValidateTimeParametersList.append((time, ()))
        return stubbedValidateTimeResult
    }
}
