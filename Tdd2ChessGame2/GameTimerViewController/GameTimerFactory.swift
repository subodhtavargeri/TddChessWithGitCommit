
import Foundation
import UIKit

struct GameTimerFactory {
    static func create(router: Router) -> GameTimerViewController {
        let gameTimer = GameTimer()
        let view = GameTimerViewController()
        let presenter = GameTimerPresenter.init(view: view, gameTimer: gameTimer, router: router)
        view.setup(presenter: presenter)
        return view
    }
}
