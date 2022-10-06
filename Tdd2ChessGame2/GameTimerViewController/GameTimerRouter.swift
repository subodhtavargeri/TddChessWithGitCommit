import Foundation
import UIKit

class Router: RouterProtocol {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func routeToGameTimer() {
        let controller = GameTimerFactory.create(router: self)
        
        navigationController.setViewControllers([controller], animated: false)
    }
    
    func routeToPlayerTimer() {
        let playerTimerController = PlayerTimerFactory.create(router: self)
        
        navigationController.pushViewController(playerTimerController, animated: true)
    }
}
