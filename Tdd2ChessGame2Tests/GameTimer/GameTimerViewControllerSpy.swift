//
//  GameTimerViewControllerSpy.swift
//  Tdd2ChessGame2Tests
//
//  Created by Subodh Tavargeri on 06/10/22.
//

import Foundation
@testable import Tdd2ChessGame2

class GameTimerViewControllerSpy: GameTimerViewControllerDisplayLogic {

    var invokedSetControllerTitle = false
    var invokedSetControllerTitleCount = 0
    var invokedSetControllerTitleParameters: (title: String, Void)?
    var invokedSetControllerTitleParametersList = [(title: String, Void)]()

    func setControllerTitle(title: String) {
        invokedSetControllerTitle = true
        invokedSetControllerTitleCount += 1
        invokedSetControllerTitleParameters = (title, ())
        invokedSetControllerTitleParametersList.append((title, ()))
    }

    var invokedRouteToPlayerTimer = false
    var invokedRouteToPlayerTimerCount = 0

    func routeToPlayerTimer() {
        invokedRouteToPlayerTimer = true
        invokedRouteToPlayerTimerCount += 1
    }

    var invokedInvalidTimeEntered = false
    var invokedInvalidTimeEnteredCount = 0
    var invokedInvalidTimeEnteredParameters: (message: String, Void)?
    var invokedInvalidTimeEnteredParametersList = [(message: String, Void)]()

    func invalidTimeEntered(message: String) {
        invokedInvalidTimeEntered = true
        invokedInvalidTimeEnteredCount += 1
        invokedInvalidTimeEnteredParameters = (message, ())
        invokedInvalidTimeEnteredParametersList.append((message, ()))
    }
}
