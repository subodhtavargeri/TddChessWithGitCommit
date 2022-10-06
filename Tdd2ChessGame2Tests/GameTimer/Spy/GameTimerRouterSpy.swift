//
//  GameTimerRouterSpy.swift
//  Tdd2ChessGame2Tests
//
//  Created by Subodh Tavargeri on 06/10/22.
//

import Foundation
@testable import Tdd2ChessGame2

class GameTimerRouterSpy: GameTimerRouterProtocol {

    var invokedRouteToPlayerTimer = false
    var invokedRouteToPlayerTimerCount = 0
    var invokedRouteToPlayerTimerParameters: (controller: GameTimerViewController, Void)?
    var invokedRouteToPlayerTimerParametersList = [(controller: GameTimerViewController, Void)]()

    func routeToPlayerTimer(controller: GameTimerViewController) {
        invokedRouteToPlayerTimer = true
        invokedRouteToPlayerTimerCount += 1
        invokedRouteToPlayerTimerParameters = (controller, ())
        invokedRouteToPlayerTimerParametersList.append((controller, ()))
    }
}
