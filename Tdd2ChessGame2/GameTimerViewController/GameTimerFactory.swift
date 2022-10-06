//
//  GameTimerFactory.swift
//  Tdd2ChessGame2
//
//  Created by Subodh Tavargeri on 05/10/22.
//

import Foundation

struct  GameTimerFactory {
    static func create() -> GameTimerViewController {
        let router = GameTimerRouter()
        let gameTimer = GameTimer()
        let controller = GameTimerViewController()
        let presenter = GameTimerPresenter.init(controller: controller, gameTimer: gameTimer)
        controller.setup(presenter: presenter, router: router)
        return controller
    }
}
