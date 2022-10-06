//
//  GameTimerPresenter.swift
//  Tdd2ChessGame2
//
//  Created by Subodh Tavargeri on 05/10/22.
//

import Foundation

protocol GameTimerPresenterProtocol {
    func setTitle()
    func validateTime(time: String)
}
class GameTimerPresenter: GameTimerPresenterProtocol {
    
    private let gameTimer: GameTimerProtocol
    private weak var controller: GameTimerViewControllerDisplayLogic?
    
    init(controller:GameTimerViewControllerDisplayLogic,
         gameTimer: GameTimerProtocol) {
        self.controller = controller
        self.gameTimer = gameTimer
    }
    
    func setTitle() {
        controller?.setControllerTitle(title: "Chess Timer")
    }
    
    func validateTime(time: String) {
        let valid = gameTimer.validateTime(time: time)
        if valid {
            controller?.routeToPlayerTimer()
            return
        }
        controller?.invalidTimeEntered(message: "Please enter time in minutes")
    }
}
