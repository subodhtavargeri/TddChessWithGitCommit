//
//  GameTimerViewControllerSpy.swift
//  Tdd2ChessGame2Tests
//
//  Created by Subodh Tavargeri on 06/10/22.
//

import Foundation
@testable import Tdd2ChessGame2

class GameTimerViewControllerSpy: GameTimerView {

    var invokedSetViewTitle = false
    var invokedSetViewTitleCount = 0
    var invokedSetViewTitleParameters: (title: String, Void)?
    var invokedSetViewTitleParametersList = [(title: String, Void)]()

    func setViewTitle(title: String) {
        invokedSetViewTitle = true
        invokedSetViewTitleCount += 1
        invokedSetViewTitleParameters = (title, ())
        invokedSetViewTitleParametersList.append((title, ()))
    }

    var invokedHideErrorMessage = false
    var invokedHideErrorMessageCount = 0

    func hideErrorMessage() {
        invokedHideErrorMessage = true
        invokedHideErrorMessageCount += 1
    }

    var invokedShowErrorMessage = false
    var invokedShowErrorMessageCount = 0
    var invokedShowErrorMessageParameters: (message: String, Void)?
    var invokedShowErrorMessageParametersList = [(message: String, Void)]()

    func showErrorMessage(message: String) {
        invokedShowErrorMessage = true
        invokedShowErrorMessageCount += 1
        invokedShowErrorMessageParameters = (message, ())
        invokedShowErrorMessageParametersList.append((message, ()))
    }
}
