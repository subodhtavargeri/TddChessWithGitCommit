
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
