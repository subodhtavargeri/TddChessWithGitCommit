//
//  PlayerTimerFactory.swift
//  Tdd2ChessGame2
//
//  Created by Subodh Tavargeri on 06/10/22.
//

import Foundation

struct  PlayerTimerFactory {
    static func create(router: RouterProtocol) -> PlayerTimerViewController {
        let game = Game()
        let view = PlayerTimerViewController()
        let presenter = PlayerTimerPresenter.init(controller: view, game: game)
        view.setup(presenter: presenter)
        return view
    }
}
