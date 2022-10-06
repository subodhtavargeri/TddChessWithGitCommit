//
//  GameTimerRouter.swift
//  Tdd2ChessGame2
//
//  Created by Subodh Tavargeri on 05/10/22.
//

import Foundation

protocol GameTimerRouterProtocol {
    func routeToPlayerTimer(controller: GameTimerViewController)
}
class GameTimerRouter : GameTimerRouterProtocol {
    
    func routeToPlayerTimer(controller: GameTimerViewController) {
        let playerTimerController = PlayerTimerFactory.create()
        controller.navigationController?.pushViewController(playerTimerController, animated: true)
    }
}
