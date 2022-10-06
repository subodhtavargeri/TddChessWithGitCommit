
import Foundation

struct  GameTimerFactory {
    static func create() -> GameTimerViewController {
        let router = GameTimerRouter()
        let gameTimer = GameTimer()
        let view = GameTimerViewController()
        let presenter = GameTimerPresenter.init(view: view, gameTimer: gameTimer, router: router)
        view.setup(presenter: presenter)
        return view
    }
}
