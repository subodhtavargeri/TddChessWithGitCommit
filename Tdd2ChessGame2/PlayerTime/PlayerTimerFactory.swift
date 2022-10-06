//
//  PlayerTimerFactory.swift
//  Tdd2ChessGame2
//
//  Created by Subodh Tavargeri on 06/10/22.
//

import Foundation

struct  PlayerTimerFactory {
    static func create() -> PlayerTimerViewController {
        let router = PlayerTimerRouter()
        let game = Game()
        let controller = PlayerTimerViewController()
        let presenter = PlayerTimerPresenter.init(controller: controller, game: game)
        controller.setup(presenter: presenter, router: router)
        return controller
    }
}
